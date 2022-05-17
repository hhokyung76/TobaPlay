package com.toba.tobaplay.core.job;

import com.toba.tobaplay.core.info.TobaFlowJobInfo;
import com.toba.tobaplay.core.manager.TobaFlowManager;
import com.toba.tobaplay.core.task.TobaJobTaskCenter;
import lombok.Getter;
import lombok.Setter;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Getter
@Setter
@Component
@Scope("prototype")
public class TobaFlowJobRunner implements Runnable{

    private TobaFlowManager tobaFlowManager;

    @Override
    public void run() {

        while(true) {
            TobaFlowJobInfo flowJobInfo = null;
            try {
                flowJobInfo = (TobaFlowJobInfo) tobaFlowManager.getFlowJobQueue().take();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

            TobaJobTaskCenter jobTaskCenter = new TobaJobTaskCenter(flowJobInfo);
            tobaFlowManager.getTobaFlowExecService().submit(jobTaskCenter);
        }
    }
}

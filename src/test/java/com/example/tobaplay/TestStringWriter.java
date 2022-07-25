package com.example.tobaplay;

import org.apache.commons.io.IOUtils;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;

public class TestStringWriter {


    /**
     * get contents (text 파일)
     *
     * 다운로드된 파일 text 파일을 읽어서 처리.
     *
     * @throws IOException
     */
    public static BufferedReader getContentsObjectFromFile(String fileName) throws IOException {

        try {
            System.out.println("S3Util - File Object Contents BufferdReader - Start : {} "+ fileName);

            InputStream is = Files.newInputStream(new File(fileName).toPath());
            BufferedReader br = new BufferedReader(new InputStreamReader(is, StandardCharsets.UTF_8));

//            log.debug("S3Util - File Object Contents BufferdReader - Complete : {} ", fileName);

            return br;

        } catch (IOException e) {
//            log.error("[ERROR] getContentsObjectFromGzipFile({}, {})", bucketName, fileKey);
            throw e;
        }
    }


    public static void main(String[] args) throws IOException {

        InputStream is = null;
        try {
            is = Files.newInputStream(new File("/Users/hklee/data/26657d5ff9020d2abefe558796b99584_KAKAO_0001.adid").toPath());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
//        try {
//            inputStream = getContentsObjectFromFile("");
//        } catch (IOException e) {
//            throw new RuntimeException(e);
//        }
//        StringWriter writer = new StringWriter();
//        try {
//            IOUtils.copy(is, writer, "UTF-8");
//        } catch (IOException e) {
//            throw new RuntimeException(e);
//        }
//        String temp = writer.toString();
//        System.out.println(temp);

        String line;
        BufferedReader br = null;
        try {
            br = getContentsObjectFromFile("/Users/hklee/data/26657d5ff9020d2abefe558796b99584_KAKAO_0001.adid");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }


        int fileCount = 0;
        int lineCount = 0;
        int sendUserCount = 0;
        String fileSeqNo; // 파일 일련번호
        String sendFileSplitName = "";
        String sendFileNameExcludeExt ="";

        while ((line = br.readLine()) != null) {
            lineCount++;
            sendUserCount++;

            System.out.println("line: "+line);

            if (lineCount == 1) {
                fileCount++;
                fileSeqNo = "0000" + fileCount;
                // tg_download/d7/9c/d79c8788088c2193f0244d8f1f36d2db/d79c8788088c2193f0244d8f1f36d2db_KAKAO_0001.adid
//                sendFileSplitName = sendFileNameExcludeExt + "_" + fileSeqNo.substring(fileSeqNo.length() - 4) + "." + sendFileNameExt;
//                sendFileSplitNames.add(sendFileSplitName);
//
//                // tmp/tmp_d79c8788088c2193f0244d8f1f36d2db_KAKAO_0001.adid
//                sendFileNameLocal = sendFileSplitName.substring(sendFileSplitName.lastIndexOf("/") + 1);
//                sendFileNameLocalPath = String.format("%s/%s%s", UPLOAD_CSV_TMP_DIR, "tmp_", sendFileNameLocal);
//
//                bw = new BufferedWriter(new FileWriter(sendFileNameLocalPath));
//
//                if (!line.equals("adid")) {
//                    bw.write("adid");
//                    bw.newLine();
//                }
            }

//            bw.write(line);
//            bw.newLine();
//
//            if (lineCount == splitLine) {
//                lineCount -= splitLine;
//                bw.flush();
//                bw.close();
//
//                //upload to s3
//                String uploaded_file_path = S3Util.uploadFile(S3_DMP_SHARE, sendFileNameLocalPath, sendFileSplitName);
//                log.info("success uploaded_file_path " + uploaded_file_path);
//            }
        }
    }
}

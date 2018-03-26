public static final String DEST = "/file-path/file.pdf";
public static final String FOX = "/file-path/file.bmp";
public static final String DOG = "/file-path/file.bmp";

public static void main(String[] args) {
    File file = new File(DEST);
    file.getParentFile().mkdirs();
    new class_name.createPdf(DEST);
}

public void createPdf(String dest) {
    // define document size
    Document document = new Document(PageSize.A4.rotate());
    // get pdf writer instance
    PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(dest));
    // set version
    writer.setPdfVersion(PdfWriter.VERSION_1_7);
    
}
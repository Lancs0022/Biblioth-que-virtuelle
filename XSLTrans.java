import java.io.File;
import javax.xml.transform.*;
import javax.xml.transform.stream.*;

// Script java pour transformer un fichier xml en html à l'aide d'un fichier xsl
public class XSLTrans {
    public static void main(String[] args) {
        try {
            // Chemin des fichier xml et xsl à transformer
            Source xmlInput = new StreamSource(new File("C:/Users/lancs/Documents/Projets M1/XML/Bibliothèque virtuelle/bibliotheque.xml"));
            Source xslInput = new StreamSource(new File("C:/Users/lancs/Documents/Projets M1/XML/Bibliothèque virtuelle/bibliotheque.xsl"));

            // Chemin vers le fichier html à produire
            Result xmlOutput = new StreamResult(new File("C:/Users/lancs/Documents/Projets M1/XML/Bibliothèque virtuelle/bibliotheque.html"));

            // Initier la fabrique de transformations
            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(xslInput);

            // Effectuer la transformation
            transformer.transform(xmlInput, xmlOutput);

            System.out.println("Transformation terminée !");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
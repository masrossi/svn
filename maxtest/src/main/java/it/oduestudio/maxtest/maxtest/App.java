package it.oduestudio.maxtest.maxtest;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.regex.Pattern;

import org.apache.commons.io.FileUtils;

/**
 * Hello world!
 *
 */
public class App {
	public static void main(String[] args) {

		gbFiltraInsert();
	}

	private static void test() {
		String pathname = "C:\\wks-test\\mkt\\";
		String fileName = "cominfo.txt";
		File file = new File(pathname + fileName);
		List<String> readLines = null;
		try {
			readLines = FileUtils.readLines(file);
			for (String line : readLines) {
				// System.out.println(line);

				String[] s1 = line.split(",");
				for (int i = 0; i < s1.length; i++) {
					System.out.println(s1[i].trim());
				}

			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static void test1() {
		String pathname = "C:\\wks-test\\ordingre\\";
		String fileName = "RE_AlboUnico_3s - Copia.csv";
		File file = new File(pathname + fileName);
		List<String> readLines = null;
		try {
			readLines = FileUtils.readLines(file);
			StringBuffer sb = new StringBuffer();
			int i = 0;
			for (String line : readLines) {
				i++;
				if ((i % 10) == 0) {
					sb.append("\n\n\n");
				}
				sb.append(line);
				sb.append(",");
			}
			System.out.println(sb.substring(0, sb.length() - 1));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static void gbFiltraInsert() {
		String pathname = "C:\\svn\\github\\masrossi\\svn\\trunk\\yucca\\gioiababy\\";
		String inFileName = "dump_gioiababy.sql";
		String outFileName = "gb_insert.sql";
		File inFile = new File(pathname + inFileName);
		File outFile = new File(pathname + outFileName);
		String encoding = "UTF8";
		List<String> readLines = null;
		try {
			readLines = FileUtils.readLines(inFile);
			int i = 0;
			StringBuffer sb = new StringBuffer();
			for (String line : readLines) {
				i++;
				if (line.startsWith("INSERT INTO")) {
					sb.append(line + "\n");

				}
				System.out.println("Linee elaborate: " + i);
			}
			FileUtils.writeStringToFile(outFile, sb.toString(), encoding);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}

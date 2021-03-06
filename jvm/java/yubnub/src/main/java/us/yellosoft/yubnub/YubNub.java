package us.yellosoft.yubnub;

import java.io.IOException;

/** YubNub launcher **/
public final class YubNub {
  /** YubNub command URI */
  public static final String PARSER = "http://yubnub.org/parser/parse?command=";

  /** utility class */
  private YubNub() {}

  /**
     <p>Execute YubNub command in system default browser</p>
     @param command a YubNub command
     @throws IOException on CLI error
     @throws InterruptedException on process error
  */
  public static void go(final String command) throws IOException, InterruptedException {
    Process process = Runtime.getRuntime().exec(String.format("open %s%s", PARSER, command));
    process.waitFor();
    process.destroy();
  }

  /**
     <p>CLI</p>
     @param args CLI arguments
     @throws Exception on process error
  */
  public static void main(final String[] args) throws Exception {
    go(String.join("+", args));
  }
}

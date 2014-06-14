require 'bs_wrapper'

def github_404_screenshot
  options = {os: "Windows",
           os_version: "XP",
           url: "https://github.com/404",
           browser: "firefox",
           browser_version: "28.0"}

  worker = BsWrapper.create_worker(options)

  # Wait till worker has allotted a terminal
  sleep(30)

  screenshot = worker.screenshot

  worker.delete

  return screenshot
end

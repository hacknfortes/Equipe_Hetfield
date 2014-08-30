module VersionHelper
  MAJOR = 0
  MINOR = 1
  TINY  = 0
  PRE   = "beta"

  def app_version
    [MAJOR, MINOR, TINY, PRE].compact.join(".").to_s  
  end
end
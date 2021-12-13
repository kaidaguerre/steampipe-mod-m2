mod "m2" {
  title = "m2"
  require {
    mod "github.com/kaidaguerre/steampipe-mod-m1"  {
      version = "v2.*"
    }
  }
}

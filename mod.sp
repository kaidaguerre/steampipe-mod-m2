
variable "v1" {
  type    = string
  default = "m2-default"
}


mod "m2" {
  title    = "Mod 2"
  require {
    mod "github.com/kaidaguerre/steampipe-mod-m3" {
      version = "*"
    }
  }
}

dashboard "d2"{
    table {
        sql = "select '${var.v1}' as var_value"
    }
}
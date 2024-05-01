
variable "v1" {
  type    = string
  default = "m2-default"
}


mod "m2" {
  title    = "Mod 2_"
  require {
    mod "github.com/kaidaguerre/steampipe-mod-m3" {
      version = "*"
      args = {
        v1 = var.v1
      }
    }
  }
}

dashboard "d2"{
    table {
       query = query.q1
    }
}

query "q1"{
    sql = m3.query.q1.sql
}

// JavaScript Document
function res() {
    var username = document.getElementById("name").value;
    var pass = document.getElementById("pass").value;
    var repass = document.getElementById("repass").value;
    var phone = document.getElementById("phone").value;
    var identify = document.getElementById("identify").value;
    var sex = document.getElementsByName("sex");
    if (username == "")
        alert("账号不能为空");
    else if (pass == "") {
        alert("密码不能为空");
    }
    else if (pass.length < 6) {
        alert("密码长度为6位");
    }
    else if (repass == "") {
        alert("请确认密码");
    }
    else if (phone == "") {
        alert("请输入手机号码");
    }
    else if (phone == "") {
        alert("请输入验证码");
    }
    else if (!sex[0].checked && !sex[1].checked) {
        alert("请选择性别");
    }
    else if (pass != repass) {
        alert("两次密码不一致");
    }
    else {
        alert("注册成功");
        window.location.href = "Login.html";
    }
}
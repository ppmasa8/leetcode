# @param {String} password
# @return {Boolean}
def strong_password_checker_ii(password)
    [/.{8,}/, /[A-Z]/, /[a-z]/, /[0-9]/, /[!@\#$%\^&*()\-+]/].all? { password.match?(_1) } && !password.match?(/(.)\1/)
end

const verifiedUsername = (req, res, next) => {
  const { username } = req.body;
  if (!username || username.length < 4) 
    return res.status(400).json({ message: 'invalid data' });
  
  next();
};

const verifiedEmail = (req, res, next) => {
  const { email } = req.body;
  if(
    !email ||
    !email.includes('@') ||
    !email.includes('.com')
  )
    return res.status(400).json({ message: 'invalid data' });

  next();
};

const verifiedPassword = (req, res, next) => {
  const { password } = req.body;
  const passwordRegex = /^[0-9]*$/;

  if(
    password.length < 3 ||
    password.length > 8 ||
    !password.match(passwordRegex)
  )
    return res.status(400).json({ message: 'invalid data' });

  next();
};

module.exports =  {
  verifiedUsername,
  verifiedEmail,
  verifiedPassword,
};

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.11;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

/**
 * @title StandardToken
 * @dev Implements the IERC20 interface. Copied from @openzeppelin/contracts/token/ERC20/IERC20.sol.
 */
contract StandardToken is IERC20 {
  using SafeMath for uint256;

  mapping (address => uint256) _balances;
  mapping (address => mapping (address => uint256)) _allowances;
  uint256 _totalSupply;

  function totalSupply() public view returns (uint256) {
      return _totalSupply;
  }

  function balanceOf(address account) public view returns (uint256) {
      return _balances[account];
  }

  function transfer(address recipient, uint256 amount) public returns (bool) {
      _transfer(msg.sender, recipient, amount);
      return true;
  }

  function allowance(address owner, address spender) public view returns (uint256) {
      return _allowances[owner][spender];
  }

  function approve(address spender, uint256 value) public returns (bool) {
      _approve(msg.sender, spender, value);
      return true;
  }

  function transferFrom(address sender, address recipient, uint256 amount) public returns (bool) {
      _transfer(sender, recipient, amount);
      _approve(sender, msg.sender, _allowances[sender][msg.sender].sub(amount));
      return true;
  }

  function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
      _approve(msg.sender, spender, _allowances[msg.sender][spender].add(addedValue));
      return true;
  }

  function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
      _approve(msg.sender, spender, _allowances[msg.sender][spender].sub(subtractedValue));
      return true;
  }

  function _transfer(address sender, address recipient, uint256 amount) internal {
      require(sender != address(0), "ERC20: transfer from the zero address");
      require(recipient != address(0), "ERC20: transfer to the zero address");

      _balances[sender] = _balances[sender].sub(amount);
      _balances[recipient] = _balances[recipient].add(amount);
      emit Transfer(sender, recipient, amount);
  }

  function _mint(address account, uint256 amount) internal {
      require(account != address(0), "ERC20: mint to the zero address");

      _totalSupply = _totalSupply.add(amount);
      _balances[account] = _balances[account].add(amount);
      emit Transfer(address(0), account, amount);
  }

  function _burn(address account, uint256 value) internal {
      require(account != address(0), "ERC20: burn from the zero address");

      _totalSupply = _totalSupply.sub(value);
      _balances[account] = _balances[account].sub(value);
      emit Transfer(account, address(0), value);
  }

  function _approve(address owner, address spender, uint256 value) internal {
      require(owner != address(0), "ERC20: approve from the zero address");
      require(spender != address(0), "ERC20: approve to the zero address");

      _allowances[owner][spender] = value;
      emit Approval(owner, spender, value);
  }

  function _burnFrom(address account, uint256 amount) internal {
      _burn(account, amount);
      _approve(account, msg.sender, _allowances[account][msg.sender].sub(amount));
  }
}
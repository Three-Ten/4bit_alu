@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 35c04363fba84ac091ce74c373a0c577 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Alu4_behav xil_defaultlib.Alu4 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

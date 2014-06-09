README

included:
All source files (.rb, .csv, .txt)
this README
Sample data
Output text file on sample data

-------------------------------------------------------------------------------------------------------------
Rebalancer
-------------------------------------------------------------------------------------------------------------

This is a simple Ruby program that rebalances a current portfolio of shares to meet target allocation requirements. 
A portfolio is input to the program and the set of transactions required to reach our goals is output. Since there is no UI needed, the foremost language to use in this case was Ruby on its Rails framework.

Ruby is a versatile language that allows a large amount of freedom on the use of various data in programs. With the Rails framework, one could accomplish more with less, better structured code. Since the code can be re-used, changes are easy, making iteration and experimentation painless.
There was also the fact that I was more comfortable with Ruby because of prior experience in PHP programming. For our purposes, a simple manipulation of data from a table and single output was all that was required so Ruby was a good fit. 

--------------------------------------------------------------------------------------------------------------
Installation and Use
--------------------------------------------------------------------------------------------------------------
Each WealthSimple customer has a portfolio with a set of investments along with target allocations for these investments. However, as share prices fluctuate, the actual allocations of investments may diverge from the target allocations. For example:

| Ticker | Target allocation | Actual allocation | Shares owned | Share price |
|--------|-------------------|-------------------|--------------|-------------|
| GOOG   | 60%               | 50.96%            | 52           | $98         |
| AAPL   | 30%               | 29.92%            | 136          | $22         |
| TSLA   | 10%               | 19.12%            | 239          | $8          |

The job of the rebalancing module is to buy or sell shares to bring the actual allocation of investments as close as possible to the target allocations. Included with the program is a sample input data in csv format that contains the information above

For a complete list of ways to install Ruby, including using third party tools like rvm, see: You may also need the DevKit which can be downloaded here too.

http://www.ruby-lang.org/en/downloads/
https://forwardhq.com/support/installing-ruby-windows

The Ruby distribution files can be found in the following FTP site:

ftp://ftp.ruby-lang.org/pub/ruby/

You may also need the DevKit which can be downloaded here too.
Once you have Ruby up and running on your machine, you can then run the program, bearing in mind that you may have to change the working directory to one where the files are kept.
In order to run the program please run the following command in the Ruby command window:

$ruby Rebalancer.rb [name of file here]

For example:
$ruby Rebalancer.rb data.csv

A set of transactions will then be output that shows the necessary purchases or sales of shares needed to meet the targets.

-------------------------------------------------------------------------------------------------------------
Limitations
-------------------------------------------------------------------------------------------------------------
Bearing in mind we are dealing with portfolios, the assumption was made that the data input to the program would be in a tabular format, more often than not in a csv format. This was the underlying assumption made when the program was being written as shall be discussed below.

The use of the CSV gem was most vital in this program in order to easily convert the data into a more manageable format as an array of hashes. If this was a false assumption, or the testing bed did not have the files required, it is just a matter of modifying the temporary storage of the input data. For example, if our data was in another format, we may read in the file using piece of code that's included named as "fileread.txt".

Now if the testing bed did not have the required files, in particular the "csv.rb" file, one could simply install the gem from the Ruby command window:

$gem install csv

The time line given to complete was adequate to create a fully functional program, but if there was to be more time and/or resources spent on it, I would incorporate a wider range of data input and ruser input for real time manipulation of data. I would also have created a database that contained the portfolio to easily access the data and not have to use temporary structures in coding. This would also save some processing memory.

-------------------------------------------------------------------------------------------------------------
Contacts
-------------------------------------------------------------------------------------------------------------
For more information regarding deployment and compiling, please contact me at

	parekhk@uwindsor.ca

Or visit my GitHub page at:

https://github.com/zimindkp



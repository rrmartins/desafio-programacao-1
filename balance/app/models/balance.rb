class Balance < ActiveRecord::Base

  def self.count_price
    all.map(&:item_price).inject(:+)
  end

  def split_save(attachment, nickname)
    @attachment, @nickname = attachment, nickname
    split_save_attachement
    true
  end

  private
    def split_save_attachement
      lines = @attachment.read.split("\n")[1..-1]
      lines.each do |line|
        column = line.split("\t")
        balance = Balance.new
        balance.purchaser_name = column[0]
        balance.item_description = column[1]
        balance.item_price = column[2]
        balance.purchase_count = column[3]
        balance.merchant_address = column[4]
        balance.merchant_name = column[5]
        balance.nickname = @nickname
        balance.save
      end
    end


end

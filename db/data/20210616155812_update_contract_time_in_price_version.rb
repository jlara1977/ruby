class UpdateContractTimeInPriceVersion < ActiveRecord::Migration[6.0]
  def up
    actual_last_contract_time = 3
    PriceVersion.where.not(
      "contract_time > #{actual_last_contract_time}"
    ).where('contract_time > 0').sort_by(&:contract_time).each do |price_version|
      begin
        price_version.update!(
          contract_time: PriceVersion.contract_times[price_version.contract_time] - 1
        )
      rescue Exception
      end
    end
    PriceVersion.where("contract_time > #{actual_last_contract_time}").each do |price_version|
      price_version.update!(contract_time: PriceVersion.contract_times.values.last)
    end
  end
end

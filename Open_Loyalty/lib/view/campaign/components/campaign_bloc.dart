import 'package:open_loyalty/Firebase/respository.dart';
import 'package:open_loyalty/models/campaign_model.dart';
import 'package:rxdart/rxdart.dart';

class CampaignBloc {
  final _repository = Repository();
  final _campaignFetcher = PublishSubject<ListCampaignModel>();

  Stream<ListCampaignModel> get campaign => _campaignFetcher.stream;

  fetchCustomerCampaign() async {
    print("fetch campaign");
    ListCampaignModel? campaignModel = await _repository.fetchCustomerCampaign();
    _campaignFetcher.sink.add(campaignModel!);
  }

  void setCustomerCampaign() async {
    print("set customer campaign");
    return await _repository.setCustomerCampaign();
  }

  dispose() {
    _campaignFetcher.close();
  }
}

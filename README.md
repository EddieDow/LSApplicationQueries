# LSApplicationQueriesSchemes

The project to verify how LSApplicationQueries strategy work on iOS 9

The testing against Xcode 7.1, iOS is 9.1

Result: 


If did not add Skype/WeChat into LSApplicationQueriesSchemes list, canOpenURL will return false, error like ' -canOpenURL: failed for URL: "skype://" - error: "This app is not allowed to query for scheme skype"' ,but openURL still can open skype/wechat success.

No matter add SMS/TEL into LSApplicationQueriesSchemes list or not, canOpenURL always return true, openURL also can open Messages/Telephone success.




void main(List<String> args) {
  final elvesSplitted = input.split('\n\n');
  final unflatted = elvesSplitted.map<List<String>>((e) => e.split('\n'));
  final totalForElves = <int>[];
  for (final calories in unflatted) {
    final intParsed = calories.where((e) => e.isNotEmpty).map<int>(int.parse);
    final total = intParsed.fold<int>(0, (previousValue, element) => previousValue + element);
    totalForElves.add(total);
  }

  totalForElves.sort();
  print(totalForElves.last); // Part 1
  print(totalForElves.reversed.take(3).fold<int>(0, (previousValue, element) => previousValue + element)); // Part 2
}




// Was too lazy to read a file
const input = '''
4514
8009
6703
1811
4881
3905
3933
9436
4332

3059
15715
11597
10625
8486

4556
10613
4087
11287
12020
1412

5320
9757
10646
7373
1197
3486
4359

16319
22687
5272

6167
2478
4950
5513
6113
2739
6805
4488
6555
2752

2198
2528
3432
2218
3283
1400
1932
3438
1834
1050
4766
5218
3033
3410

3362
2773
6782
7416
5388
5419
4628
8877

2852
7531
6028
8068
3942
9388
8053
6334
6099

2086
3097
2914
3087
7500
1718
1482
6198
2057
7098
7464

4522
4306
1906
6692
1273
3851
6475
1186
6012
2456
2414
5740

12352
14613
4339
1259
3363

5505
5913
6539
4164
10864
8085
4962

5427
3232
6945
4536
6549
2299
4450
2130
3757

8546
3303
9097
2356
3155
1122
6978
3389

55471

3774
7631
2208
11171
5316
1342
5328

10879
9002
11257
3581
7878
10258

2577
1797
5983
11497
3851

4420
5333
4281
6978
2230
2658
4337
3238
7724
7813
7326

1907
1190
6038
6109
4484
5432
6124
7755
8056
7040

1782
1645
6918
3525
2147
6923
7008
9695

3026
5366
2607
6065
3997
2859
2836
5214
5599
3201
3666
1140
4597
5899
4111

9757
25752
21486

16745

3571
8001
7104
4253
1833
1393
6105
2036
7697
1066
6702

2358
4265
1826
5129
1598
1630
3271
2349
5261
3496
4495
6875
3404

13904
4223
10247
3708

8961
13101
6896
11053
6335
11459

3948
4739
4888
5918
6229
5056
3039
1030
4181
1801
3716
2410
6056
4574

5960
8186
3660
3278
3355
1016
6297
6688
7784
4939

5957
2549
3045
8425
6900
7677
1393
7579
3975
2936

3063
5296
3958
5551
3848
3588
3143
1488
3876
7298
3819
2234

6478
5440
3993
7207
6141
7936
2209
1456
6417
5250
7690

5275
11944
2501
4200
11512
13862

2941
3403
5950
8661
1801
2843
5444
7960
4143
8379

6659
5257
2225
5243
4003
2186
5857
3417
1960
3984
4876
1728

2105
4101
4754
5537
4265
4678
2571
7662
3726
7258
3696

16882
7724
3065
5176

1721
3594
5892
2019
6036
5556
4327
3334
1035
6942
4931
4084
4900

10773
10294
7417
1277
9771
8885
6845

5226

9212
2019
2943
11833
13491

4581
5217
4441
2337
7312
5529
2051
2388
5011
4581
6601

3491
3984
4322
5689
2555
1377
5654
6410
4639
5354
3402
4174
2210
3610

4130
3186
6120
1344
8012
4477
5849
7346
7418
3218
7778

10429
14053
10551
8502
1986

7470
7166
11309
5186

8940
10132
19723
15079

6791
5344
2331
2805
7742

2569
7224
5140
3158
5542
2395
2265
2922
5806
6338
6020
3443

14741
4547
1076
4543
10298

2753
4049
6701
2333
2433
4979
5514
3981
6046
2043
6719
3367
6532

6962
2222
5696
7206
5679
4041
3633
1043
1466
7205
4116

10280
17862
17944

8670
5423
3849
2444
5010
5564
7740
4000
7893
1137

10887
16819
7692

4397
12537
11166
1875
10936

6103
6781
5699
1667
6727
2974
5056
3145
6834
4884
6476
2464
2679

15428
9750
24018

2093
3411
4917
2102
3586
5310
2243
4541
4379
5443
6747
3656
1647

21030

2750
5391
1101
5197
2594
5370
4769
5508
3809
1349
5034
1757

7071
19487
9131

9010
6017
11580
10571
3779
3131

65413

1043
9178
8975
1666
8470
2231
8461
8254
2384

7499
2336
4819
6472
2467
2726
6179
7218
3422
6760

21611
4384
15789

13272
1281
4032
12189
3263
2092

18944
22554

47475

11288
12498
5455
8375
15372

3279
7755
8865
8027
2351
2164
6867
3546

2579
2302
5728
1820
5623
4980
1335
6355
5561
6707
3067
3355
5091

9430
2156
5053
4895
4751
6864
9518
7626
5000

7678
4309
2919
8319
7905
1656
6704
7666
5962

9153
1759
1344
8101
3844
9197
5987

19110
9492
13663
5459

4112
1162
3983
5407
3246
2129
1940
3455
6758
2091
3272
2441
2344

3735
3057
6874
4785
6497
5610
2273
6636
2762
4467
2209
7048

2947
4945
6535
8432
9028
5316
8208
3277

3333
6548
4928
1360
1432
5972
4575
4121
6787
6775
5400
5156

33497

4871
5442
6829
2711
7851
5936
4290
3963
1208
6115
3705

8801
1239
9742
7859
4868
6162
3990
2116

3147
5970
1028
2024
1904
5983
1455
1935
6031
4448
4915
3576
5433
4070

5581
6684
2338
6998
3365
5190
5551
6858
7120
5143
1078
1636

1765
8124
3621
5502
3924
7906
6155
5973
6596
8697

30733
19954

1227
7285
8294
6285
2505
7283
3286
4547
5292

4767
1039
3045
4567
5790
1224
6805
3689
3941
2191
2509
1020
3261

1212
2241
2926
5704
4259
2251
2437
3531
3456
5574
4056
6020
2898
5057
1712

4532
5547
2323
10119
4161
4809
8820
7200

7563
2845
1564
7468
3533
8051
6130
7713
6149
4930
5070

6145
5654
4039
5029
3369
1330
1739
3554
2637
6281
4225
1559
2998
2723

46446

8785
1461
11831
4977
8704

5982
7195
2298
6440
4355
7439
6837
1879
5288
3602
4337

4272
12891
6936
11964
4734
4828

1052
5579
5328
1640
5256
1318
1956
6453
6553
5963
2472
2892
3800

2898
6365
1775
7440
5182
2004
4704
3905
7436
3530
3931

4344
4992
3707
2214
3295
4764
2093
1942
6040
2393
2269
4681
6905

1051
4442
1254
5438
4390
3861
1951
4766
5814
6431
1181
2224
5036
1744

3493
5462
1194
3328
3332
6818
5102
6050
1621
3951
5062
1546
4304

16366
17043
12935
9439

8140
1185
8723
3441
1914
6665
3641
1010
5197
5249

4795
19775
1502
9970

14246
11998
12677
5554

6733
6173
4063
2994
4069
4907
3381
5065
3066

54029

6782
5629
3154
6967
11148
8169
4309

4985
2096
4220
6338
2578
6504
4693
2296
6020
1914

12080
7332

4018
5543
1011
5775
2445
4643
2569
4049
3815
7059

2221
5799
2865
3002
5123
4587
2616
2486
6544
3510
2072
5583
1202

20977

3908
1548
3974
3030
6060
5685
3743
3660
3953
3097
2451
5463
4462
4164
2274

3237
4155
3878
7280
6806
6805
7709
5390
4532
3508

13465
10177
12174
6555
1931
13866

1512
3659
5765
2869
6385
4182
5526
2050
4933
5630
3493
5995
1425

4335
8051
6448
6574
2379
2517
1438
4618
4844
7733
7984

1932
2692
1778
2317
2987
2215
4493
5474
1650
4271
4190
1644
5670
4252
5986

33522
20921

5651
4826
1265
10823
3532
1639
2232

2727
3843
4970
4981
1783
6192
5106

12982
10479
16306
13041
13679

4778
2726
1427
6216
5710
6500
5576
4088
5634
4158
4877
2578
1648
1329

5413
7572
2190
7615
3608
7678
3041
3741
6610
6334
1904

8421
5311
6287
9371
5937
2671
2911

18350

4656
2569
1655
4154
3594
6325
1829
3426
3380
2482
6305
5656

5623
17111
20624

6359
1958
6109
6287
10371
9097
5626
10542

12287
7358
12173
15289
1312

9307
12837
7109
3993
13645
9731

4890
5584
5799
5199
1682
3814
2759
2885
4446
4133
6358
5576
5748
1337

3017
4273
9032
6029
4492
5168
9962
7038

11137
12665

21501
32719

4835
4078
7345
7417
5831
9642
7545
5471
2139

1508
1647
8202
6437
10415
9614
1551
2297

10258
17370
7027

2258
10853
14703
3899

13138
18278
11380
11330

5362
12051
8062
11651
15184

7649
9430
5594
4730
4759
5352
11025

1001
2798
13426
11713
2081
13053

4407
1829
3318
1176
3629
5444
3213
6697
5679
6891
3961
6360
1441

7428
15180
14117
1510
12963

3321
3320
2099
2471
3159
1508
1542
4700
4859
1510
5183
2905
1609
5611
3370

8936
18333
18055
9369

7383
6409
1184
6878
7108
2568
5374
7258
5462
7207
2211
6164

3675
1118
6252
4861
6231
2161
5556
4454
5419
2729
5963
3351
3544

2060
7574
6969
2968
4316
5487
2261
1375
1796
7321

2708
10030
4543
2573
4708
1342
10369
10452

25141
19156
10265

2291
3072
6329
6608
6437
2654
5965
1873
6091
6377
3098
3708
3983

3047
8364
4720
1678
1720
8052
6597
2818
7694
7541

7453
7491
5792
4864
1486
2471
7657
5603
3222
5398
4459

3768
3173
1690
2872
4294
5843
5425
5110
1988
1660
6431
3632
4896
2094

2685
6829
6302
1294
5920
6517
6218
4705
4098
6474
2341
1907

5531
23363
22143

17140
13864
7305
13004

1924
2874
1231
4930
2131
3807
5767
5536
1716
1084
2675
3694
3267
2248
2655

9692
2588
6897
10903
2978

3149
8346
3871
1283
3229
7102
6218
8464
6478
6861

5967
3879
2451
3677
4833
3397
5966
2456
3384
6944
5076

14894
18504
14068
1686

3125
1927
1998
5447
1736
4314
3658
3604
3974
2081
5045
3374
3999
2334
1141

7064
13794

9500
2963
2683
7601
5231
1168
6598
8435
4459

1551
3535
5559
3981
2449
5891
1862
4689
6438
2998
5800
3080
3931
5084

2977
4986
1241
2931
5795
2783
2643
1917
1246
3664
1974
1619
5715
5610
3614

29617
32230

6879
11068
6443
7504
8107
13469

10186
22380

4308
5637
4183
5385
4857
2530
5744
5698
5974
1331
1545
1817
4727

15946
21142
16286

1355
4589
2441
4682
4249
7641
6701
7947
6846
3037
3281

2827
4389
15815
17784

5460
5000
18466

2896
7920
1294
3749
3284
11674
10546

9645
3616
5426
5033
6267
5149
2317
7252

11261
7599
7070
11079
12583
9632

5003
3675
2638
4788
6358
5844
3350
5636
1390
2913
2232
5648
5939
4955

12306
24639
21554

4949
7026
4490
2871
5707
1733
6263
3539
1017
3931
6667
7220

50107

1353
18516
16760
17546

17547
18508
12691
16655

10956
2619
3158
5111
4375
6522
8374

3719
2133
4951
6984
2470
6827
5425
2317
1196
1167
1082
5110

1780
4083
2628
1244
2630
1111
1212
4620
1361
4214
5617
1347
2713
5083
2211

6596
5657
3296
2932
1807
8779
7052
3786
4635
1777

1354
5299
6443
5523
4715
5121
7567
6337
5534
1844
4533

23322
1210
3150

2484
1722
8751
3583
3184
5899
1472
2242
2055
8239

6447
4108
6164
5512
3711
6093
3813
1251
6188
1785
4931
3077

9885
9867
5861
2405
6334
10881
3816

7650
4178
8336
8110
1777
7897
9552
6168

3208
5307
4567
1317
4974
5175
3512
3402
4728
5527
5545
3284
5596
4062
1904

6032
4154
3490
12546
5649
5270

6961
4013
4916
4179
1211
7349
4890
1517
4413
1651
2315
5808

7126
16312
18704
6831

2261
18391
6281
8852

1946
6964
8157
2974
5601
1525
3589
2946

5734
4359
5519
1372
4662
3645
5657
5662
2586
3218

3863
4000
1419
9581
7539
7915
2498
1755
7816

4417
8141
2738
2439
6030
8163
7689
2724
1714
4775

25107
23575

2326
4714
3260
2151
2626
3462
3721
2064
4631
5006
4407
3312
6082
5398
2887

15426
8430
8716
13178
9542

14059
12861
2877

29214

3226
2480
4432
4062
6295
6194
6685
6480
5192
4150

2195
3530
8899
6012
1369
1331
3203
3697
6926

10843
8715
8009
6756
4204
12089

2746
3205
5651
3786
6044
6925
6238
5885
3987
4287
1110
1508
6693

20460
11678

2887
2535
2228
7308
6658
3702
4383
4508
6215
3048
2140

25977

19958
20751
8435

8100
2237
2012
5688
6781
6579
7230
2736
8174
3292

4153
1026
2393
1798
4098
5538
5024
5596
5731
4619
5547
4523
1765
1443
1659

28275
14784

24558
17590
1011

1137
1609
3378
8204
1517
5949
1055
6075
1424
2625

1374
2356
4734
5102
5200
6172
4473
4267
2878
1711
1228
3968
2210

1584
7971
7179
4611
1451
1960
5043
5751
3128
6834

4158
5288
12009
2525
4308
6756

15397
14866
14231

2921
5355
4326
3965
6581
1724
6805
4925
6913
5527

6849
3614
6330
3612
5259
6735
1603
3153
5160
5526
5990
2125

3994
7956
1295
17255

48885

8156
10864
20472

12590
12826
3397
6956
10270
11191

6437
5402
5892
13043
7154

3074
5746
6941
4546
6483
6929
7339
3236
2521
1728
5400

5981
2368
2910
4789
4622
1146
2793
5396
5501
4040
4427
5061
4944
6396

3890
8736
7073
2115
2762
7470
9355
1754

10134
24611
20758

3021
4624
12109
10211

3813
2422
4148
1626
1124
6512
5130
4874
5287
5100
1147

6020
1121
6018
9226
2792
3706

8027
14155
14228
11648
14866

8839
15560
10935
2677
2764

6261
13041
5795
11615
9834
7578

5560
1044
5120
4165
4273
2333
2606
4919
2166
2723
2711
4169
1192
3290
3375

9912
13241
10389
6685
4808
1306

53747

13478
10567

14438
13430
18691
9087

3117
1338
5317
3267
2837
4002
4449
3199
2409
2922
2136
1663
4246
1331
3420
''';
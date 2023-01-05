.class public Lcom/evancharlton/mileage/math/Calculator;
.super Ljava/lang/Object;
.source "Calculator.java"


# static fields
.field private static CURRENCY_SYMBOL:Ljava/lang/String; = null

.field public static final DATE_DATE:I = 0x1

.field public static final DATE_LONG:I = 0x2

.field public static final DATE_MEDIUM:I = 0x3

.field public static final DATE_TIME:I = 0x4

.field public static final DAY_MILLIS:J = 0x5265c00L

.field private static final FORMATTERS:[Ljava/text/DateFormat;

.field public static final GALLONS:I = 0x3

.field public static final GALLONS_PER_100KM:I = 0xc

.field public static final IMPERIAL_GALLONS:I = 0x5

.field public static final IMP_GAL_PER_100KM:I = 0xe

.field public static final KM:I = 0x1

.field public static final KM_PER_GALLON:I = 0x7

.field public static final KM_PER_IMP_GALLON:I = 0x9

.field public static final KM_PER_LITRE:I = 0xb

.field public static final LITRES:I = 0x4

.field public static final LITRES_PER_100KM:I = 0xd

.field public static final MI:I = 0x2

.field public static final MI_PER_GALLON:I = 0x6

.field public static final MI_PER_IMP_GALLON:I = 0x8

.field public static final MI_PER_LITRE:I = 0xa

.field public static final MONTH_MS:J = 0x9a7ec800L

.field public static final YEAR_MS:J = 0x757b12c00L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/evancharlton/mileage/math/Calculator;->CURRENCY_SYMBOL:Ljava/lang/String;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static averageCostPerDay(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 8
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTimeRange()J

    move-result-wide v2

    .line 244
    .local v2, "timeRange":J
    long-to-double v4, v2

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 245
    .local v0, "numDays":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalCost()D

    move-result-wide v4

    div-double/2addr v4, v0

    return-wide v4
.end method

.method public static averageCostPerDistance(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 6
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    .line 223
    const-wide/16 v4, 0x0

    .line 233
    :goto_0
    return-wide v4

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalCost()D

    move-result-wide v0

    .line 227
    .local v0, "totalCost":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalDistance()D

    move-result-wide v2

    .line 231
    .local v2, "totalDistance":D
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/evancharlton/mileage/dao/FillupSeries;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v4

    sub-double/2addr v0, v4

    .line 233
    div-double v4, v0, v2

    goto :goto_0
.end method

.method public static averageDistanceBetweenFillups(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 4
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalDistance()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static averageEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/Fillup;)D
    .locals 4
    .param p0, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p1, "fillup"    # Lcom/evancharlton/mileage/dao/Fillup;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You can\'t calculate economy on one fillup"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const-wide/16 v1, 0x0

    .line 127
    :goto_0
    return-wide v1

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Fillup;->getPrevious()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/dao/Fillup;

    .line 126
    .local v0, "clone":Lcom/evancharlton/mileage/dao/Fillup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setPrevious(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 127
    new-instance v1, Lcom/evancharlton/mileage/dao/FillupSeries;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/evancharlton/mileage/dao/Fillup;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/evancharlton/mileage/dao/FillupSeries;-><init>([Lcom/evancharlton/mileage/dao/Fillup;)V

    invoke-static {p0, v1}, Lcom/evancharlton/mileage/math/Calculator;->averageEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v1

    goto :goto_0
.end method

.method public static averageEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 4
    .param p0, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p1, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalDistance()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/FillupSeries;->getEconomyVolume()D

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/evancharlton/mileage/math/Calculator;->getEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static averageFillupCost(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 4
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalCost()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static averageFillupVolume(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 4
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalVolume()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static averageFuelPerDay(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 8
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTimeRange()J

    move-result-wide v2

    .line 238
    .local v2, "timeRange":J
    long-to-double v4, v2

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 239
    .local v0, "numDays":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getTotalVolume()D

    move-result-wide v4

    div-double/2addr v4, v0

    return-wide v4
.end method

.method public static averagePrice(Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 7
    .param p0, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .prologue
    .line 249
    const-wide/16 v3, 0x0

    .line 250
    .local v3, "total":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v0

    .line 251
    .local v0, "SIZE":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 252
    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/dao/FillupSeries;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/dao/Fillup;

    .line 253
    .local v1, "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->getUnitPrice()D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    :cond_0
    int-to-double v5, v0

    div-double v5, v3, v5

    return-wide v5
.end method

.method public static compareEconomies(DIDI)I
    .locals 6
    .param p0, "first"    # D
    .param p2, "firstUnit"    # I
    .param p3, "second"    # D
    .param p5, "secondUnit"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 87
    if-ne p2, p5, :cond_4

    .line 88
    packed-switch p2, :pswitch_data_0

    .line 105
    cmpl-double v5, p0, p3

    if-lez v5, :cond_2

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 92
    :pswitch_0
    cmpg-double v5, p0, p3

    if-ltz v5, :cond_0

    .line 94
    cmpl-double v0, p0, p3

    if-lez v0, :cond_1

    move v0, v1

    .line 95
    goto :goto_0

    :cond_1
    move v0, v2

    .line 97
    goto :goto_0

    .line 107
    :cond_2
    cmpg-double v0, p0, p3

    if-gez v0, :cond_3

    move v0, v1

    .line 108
    goto :goto_0

    :cond_3
    move v0, v2

    .line 110
    goto :goto_0

    .line 113
    :cond_4
    invoke-static {p3, p4, p5, p2}, Lcom/evancharlton/mileage/math/Calculator;->convert(DII)D

    move-result-wide v3

    .local v3, "converted":D
    move-wide v0, p0

    move v2, p2

    move v5, p2

    .line 114
    invoke-static/range {v0 .. v5}, Lcom/evancharlton/mileage/math/Calculator;->compareEconomies(DIDI)I

    move-result v0

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static convert(DI)D
    .locals 4
    .param p0, "value"    # D
    .param p2, "to"    # I

    .prologue
    const-wide v2, 0x3ff33717c9a04789L    # 1.20095042

    const-wide v0, 0x3fd0e831e4f6dc8dL    # 0.264172052

    .line 308
    packed-switch p2, :pswitch_data_0

    .line 338
    :goto_0
    :pswitch_0
    return-wide p0

    .line 312
    :pswitch_1
    const-wide v0, 0x3fe3e245d68a2112L    # 0.621371192

    div-double/2addr p0, v0

    goto :goto_0

    .line 316
    :pswitch_2
    div-double/2addr p0, v0

    goto :goto_0

    .line 318
    :pswitch_3
    div-double/2addr p0, v2

    goto :goto_0

    .line 322
    :pswitch_4
    mul-double/2addr p0, v0

    goto :goto_0

    .line 324
    :pswitch_5
    mul-double/2addr p0, v2

    goto :goto_0

    .line 326
    :pswitch_6
    const-wide v0, 0x3ff9bfdf7e8038a0L    # 1.609344

    mul-double/2addr p0, v0

    goto :goto_0

    .line 328
    :pswitch_7
    const-wide v0, 0x3fdb358df36a92bdL    # 0.425143707

    mul-double/2addr p0, v0

    goto :goto_0

    .line 330
    :pswitch_8
    const-wide v0, 0x3ffeec8340bcb3a5L    # 1.93274236

    mul-double/2addr p0, v0

    goto :goto_0

    .line 332
    :pswitch_9
    const-wide v0, 0x404f118d1f37d3acL    # 62.1371192

    mul-double/2addr p0, v0

    goto :goto_0

    .line 334
    :pswitch_a
    const-wide v0, 0x406d66dddd2ae8e2L    # 235.214583

    mul-double/2addr p0, v0

    goto :goto_0

    .line 336
    :pswitch_b
    const-wide v0, 0x4049deb6cd8706f0L    # 51.7399537

    mul-double/2addr p0, v0

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static convert(DII)D
    .locals 2
    .param p0, "value"    # D
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    const-wide v0, 0x3fe3e245d68a2112L    # 0.621371192

    .line 262
    packed-switch p2, :pswitch_data_0

    .line 302
    :goto_0
    :pswitch_0
    invoke-static {p0, p1, p3}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v0

    return-wide v0

    .line 264
    :pswitch_1
    mul-double/2addr p0, v0

    .line 265
    goto :goto_0

    .line 267
    :pswitch_2
    const-wide v0, 0x3fd0e831e4f6dc8dL    # 0.264172052

    mul-double/2addr p0, v0

    .line 268
    goto :goto_0

    .line 270
    :pswitch_3
    const-wide v0, 0x3ff33717c9a04789L    # 1.20095042

    mul-double/2addr p0, v0

    .line 271
    goto :goto_0

    .line 273
    :pswitch_4
    mul-double/2addr p0, v0

    .line 274
    goto :goto_0

    .line 276
    :pswitch_5
    const-wide v0, 0x3feaa5439be11c90L    # 0.83267384

    mul-double/2addr p0, v0

    .line 277
    goto :goto_0

    .line 279
    :pswitch_6
    const-wide v0, 0x3fe08e89794c2d66L    # 0.517399537

    mul-double/2addr p0, v0

    .line 280
    goto :goto_0

    .line 282
    :pswitch_7
    const-wide v0, 0x400e4885f8a7f1f7L    # 3.78541178

    mul-double/2addr p0, v0

    .line 283
    goto :goto_0

    .line 285
    :pswitch_8
    const-wide v0, 0x4002d131d53a2ea5L    # 2.35214583

    mul-double/2addr p0, v0

    .line 286
    goto :goto_0

    .line 288
    :pswitch_9
    const-wide v0, 0x404f118d1f37d3acL    # 62.1371192

    mul-double/2addr p0, v0

    .line 289
    goto :goto_0

    .line 291
    :pswitch_a
    const-wide v0, 0x406d66dddd2ae8e2L    # 235.214583

    mul-double/2addr p0, v0

    .line 292
    goto :goto_0

    .line 294
    :pswitch_b
    const-wide v0, 0x4049deb6cd8706f0L    # 51.7399537

    mul-double/2addr p0, v0

    .line 295
    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static fillupEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D
    .locals 11
    .param p0, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p1, "series"    # Lcom/evancharlton/mileage/dao/FillupSeries;

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/FillupSeries;->last()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    .line 140
    .local v0, "current":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 141
    const-wide/16 v9, 0x0

    .line 158
    :goto_0
    return-wide v9

    .line 144
    :cond_0
    const-wide/16 v3, 0x0

    .line 145
    .local v3, "nextValidOdometer":D
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v5

    .line 147
    .local v5, "topOdometer":D
    const-wide/16 v7, 0x0

    .line 148
    .local v7, "volume":D
    :cond_1
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 149
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    move-result-wide v9

    add-double/2addr v7, v9

    .line 150
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getPrevious()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v3

    .line 152
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v9

    if-nez v9, :cond_1

    .line 157
    :cond_2
    sub-double v1, v5, v3

    .line 158
    .local v1, "distance":D
    invoke-static {p0, v1, v2, v7, v8}, Lcom/evancharlton/mileage/math/Calculator;->getEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)D

    move-result-wide v9

    goto :goto_0
.end method

.method public static getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencySymbol(Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 2
    .param p0, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "savedCurrency":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-static {}, Lcom/evancharlton/mileage/math/Calculator;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_0
    return-object v0
.end method

.method public static getDateString(Landroid/content/Context;ILjava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 417
    sget-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 418
    packed-switch p1, :pswitch_data_0

    .line 433
    :cond_0
    :goto_0
    sget-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 420
    :pswitch_0
    sget-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 423
    :pswitch_1
    sget-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    const/4 v1, 0x2

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 426
    :pswitch_2
    sget-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    const/4 v1, 0x3

    invoke-static {p0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 429
    :pswitch_3
    sget-object v0, Lcom/evancharlton/mileage/math/Calculator;->FORMATTERS:[Ljava/text/DateFormat;

    const/4 v1, 0x4

    invoke-static {p0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDistanceUnits(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Vehicle;->getDistanceUnits()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 369
    const v0, 0x7f0700cb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 366
    :pswitch_0
    const v0, 0x7f0700cd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDistanceUnitsAbbr(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 374
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Vehicle;->getDistanceUnits()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 379
    const v0, 0x7f0700cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 376
    :pswitch_0
    const v0, 0x7f0700ce

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)D
    .locals 11
    .param p0, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p1, "distance"    # D
    .param p3, "volume"    # D

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    const/4 v6, 0x1

    .line 183
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getDistanceUnits()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {p1, p2, v4, v5}, Lcom/evancharlton/mileage/math/Calculator;->convert(DII)D

    move-result-wide v2

    .line 184
    .local v2, "miles":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getVolumeUnits()I

    move-result v4

    const/4 v5, 0x3

    invoke-static {p3, p4, v4, v5}, Lcom/evancharlton/mileage/math/Calculator;->convert(DII)D

    move-result-wide v0

    .line 186
    .local v0, "gallons":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getEconomyUnits()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 205
    div-double v4, v2, v0

    :goto_0
    return-wide v4

    .line 188
    :pswitch_0
    invoke-static {v2, v3, v6}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    div-double/2addr v4, v0

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-static {v0, v1, v10}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    div-double v4, v2, v4

    goto :goto_0

    .line 192
    :pswitch_2
    invoke-static {v2, v3, v6}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    invoke-static {v0, v1, v10}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v6

    div-double/2addr v4, v6

    goto :goto_0

    .line 194
    :pswitch_3
    invoke-static {v0, v1, v9}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    div-double v4, v2, v4

    goto :goto_0

    .line 196
    :pswitch_4
    invoke-static {v2, v3, v6}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    invoke-static {v0, v1, v9}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v6

    div-double/2addr v4, v6

    goto :goto_0

    .line 198
    :pswitch_5
    mul-double v4, v7, v0

    invoke-static {v2, v3, v6}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v6

    div-double/2addr v4, v6

    goto :goto_0

    .line 200
    :pswitch_6
    invoke-static {v0, v1, v9}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    mul-double/2addr v4, v7

    invoke-static {v2, v3, v6}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v6

    div-double/2addr v4, v6

    goto :goto_0

    .line 202
    :pswitch_7
    invoke-static {v0, v1, v10}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v4

    mul-double/2addr v4, v7

    invoke-static {v2, v3, v6}, Lcom/evancharlton/mileage/math/Calculator;->convert(DI)D

    move-result-wide v6

    div-double/2addr v4, v6

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getEconomyUnitsAbbr(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 384
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Vehicle;->getEconomyUnits()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 400
    :pswitch_0
    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 387
    :pswitch_1
    const v0, 0x7f0700d7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 389
    :pswitch_2
    const v0, 0x7f0700d4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 391
    :pswitch_3
    const v0, 0x7f0700d9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 393
    :pswitch_4
    const v0, 0x7f0700de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 396
    :pswitch_5
    const v0, 0x7f0700dc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getVolumeUnits(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Vehicle;->getVolumeUnits()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 348
    const v0, 0x7f0700c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 344
    :pswitch_0
    const v0, 0x7f0700c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static getVolumeUnitsAbbr(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 353
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Vehicle;->getVolumeUnits()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 359
    const v0, 0x7f0700c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 355
    :pswitch_0
    const v0, 0x7f0700c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static isBetterEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)Z
    .locals 3
    .param p0, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p1, "first"    # D
    .param p3, "second"    # D

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Vehicle;->getEconomyUnits()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 174
    cmpl-double v2, p1, p3

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 172
    :pswitch_0
    cmpg-double v2, p1, p3

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 174
    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

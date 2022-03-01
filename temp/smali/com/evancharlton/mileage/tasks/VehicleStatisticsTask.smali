.class public Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "VehicleStatisticsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask",
        "<",
        "Lcom/evancharlton/mileage/VehicleStatisticsActivity;",
        "Landroid/database/Cursor;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VehicleStatisticsTask"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mProgress:I

.field private mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;-><init>()V

    .line 26
    iput v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mProgress:I

    .line 28
    iput v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mTotal:I

    return-void
.end method

.method private update(Lcom/evancharlton/mileage/provider/Statistic;D)V
    .locals 1
    .param p1, "statistic"    # Lcom/evancharlton/mileage/provider/Statistic;
    .param p2, "value"    # D

    .prologue
    .line 332
    invoke-virtual {p1, p2, p3}, Lcom/evancharlton/mileage/provider/Statistic;->setValue(D)V

    .line 333
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getAdapter()Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->setValue(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 334
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    .line 335
    return-void
.end method


# virtual methods
.method public attach(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;->attach(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p1}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 34
    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->attach(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V

    return-void
.end method

.method protected varargs doInBackground([Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 103
    .param p1, "cursors"    # [Landroid/database/Cursor;

    .prologue
    .line 44
    const-class v100, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    monitor-enter v100

    .line 46
    const/4 v5, 0x1

    :try_start_0
    new-array v9, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v101

    invoke-static/range {v101 .. v102}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v6

    .line 49
    .local v9, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    const-string v7, "item = ?"

    invoke-virtual {v5, v6, v7, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    const-string v8, "vehicle_id = ?"

    .line 52
    .local v8, "selection":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    .end local v9    # "args":[Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v101

    invoke-static/range {v101 .. v102}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v6

    .line 56
    .restart local v9    # "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    sget-object v7, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    const-string v10, "odometer asc"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 59
    .local v33, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mTotal:I

    .line 61
    move-object/from16 v0, p0

    iget v5, v0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mTotal:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    .line 62
    const-string v5, "VehicleStatisticsTask"

    const-string v6, "Not enough fillups to calculate statistics"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    monitor-exit v100

    .line 328
    :goto_0
    return-object v5

    .line 66
    :cond_0
    const-string v5, "CalculateTask"

    const-string v6, "Recalculating..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v90, Lcom/evancharlton/mileage/dao/FillupSeries;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, v90

    invoke-direct {v0, v5}, Lcom/evancharlton/mileage/dao/FillupSeries;-><init>([Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 70
    .local v90, "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    const-wide v11, 0x40c3880000000000L    # 10000.0

    .line 71
    .local v11, "MAX":D
    const-wide v13, -0x3f3c780000000000L    # -10000.0

    .line 73
    .local v13, "MIN":D
    const-wide/16 v95, 0x0

    .line 74
    .local v95, "totalVolume":D
    const-wide/high16 v40, -0x4010000000000000L    # -1.0

    .line 75
    .local v40, "firstVolume":D
    const-wide v86, 0x40c3880000000000L    # 10000.0

    .line 76
    .local v86, "minVolume":D
    const-wide v70, -0x3f3c780000000000L    # -10000.0

    .line 78
    .local v70, "maxVolume":D
    const-wide v76, 0x40c3880000000000L    # 10000.0

    .line 79
    .local v76, "minDistance":D
    const-wide v60, -0x3f3c780000000000L    # -10000.0

    .line 81
    .local v60, "maxDistance":D
    const-wide/16 v93, 0x0

    .line 82
    .local v93, "totalCost":D
    const-wide v72, 0x40c3880000000000L    # 10000.0

    .line 83
    .local v72, "minCost":D
    const-wide v56, -0x3f3c780000000000L    # -10000.0

    .line 85
    .local v56, "maxCost":D
    const-wide v78, 0x40c3880000000000L    # 10000.0

    .line 86
    .local v78, "minEconomy":D
    const-wide v62, -0x3f3c780000000000L    # -10000.0

    .line 88
    .local v62, "maxEconomy":D
    const-wide v74, 0x40c3880000000000L    # 10000.0

    .line 89
    .local v74, "minCostPerDistance":D
    const-wide v58, -0x3f3c780000000000L    # -10000.0

    .line 91
    .local v58, "maxCostPerDistance":D
    const-wide v84, 0x40c3880000000000L    # 10000.0

    .line 92
    .local v84, "minPrice":D
    const-wide v68, -0x3f3c780000000000L    # -10000.0

    .line 94
    .local v68, "maxPrice":D
    const-wide v80, 0x40c3880000000000L    # 10000.0

    .line 95
    .local v80, "minLatitude":D
    const-wide v64, -0x3f3c780000000000L    # -10000.0

    .line 96
    .local v64, "maxLatitude":D
    const-wide v82, 0x40c3880000000000L    # 10000.0

    .line 97
    .local v82, "minLongitude":D
    const-wide v66, -0x3f3c780000000000L    # -10000.0

    .line 99
    .local v66, "maxLongitude":D
    const-wide/16 v46, 0x0

    .line 100
    .local v46, "lastMonthCost":D
    const-wide/16 v50, 0x0

    .line 102
    .local v50, "lastYearCost":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide v101, 0x757b12c00L

    sub-long v48, v5, v101

    .line 103
    .local v48, "lastYear":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide v101, 0x9a7ec800L

    sub-long v44, v5, v101

    .line 105
    .local v44, "lastMonth":J
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v97

    .line 107
    .local v97, "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    invoke-virtual/range {v97 .. v97}, Lcom/evancharlton/mileage/dao/Vehicle;->getEconomyUnits()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 117
    :goto_1
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->stopCalculations()V

    .line 313
    :cond_1
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MAX_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v60

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 314
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MIN_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v76

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 315
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MAX_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v62

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 316
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MIN_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v78

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 317
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MAX_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 318
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MIN_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v74

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 319
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->LAST_MONTH_COST:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v46

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 320
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->LAST_YEAR_COST:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v50

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 321
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->NORTH:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v64

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 322
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->SOUTH:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v80

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 323
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->EAST:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v66

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 324
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->WEST:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v82

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 326
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 327
    monitor-exit v100
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0

    .line 112
    :pswitch_0
    const-wide v78, -0x3f3c780000000000L    # -10000.0

    .line 113
    const-wide v62, 0x40c3880000000000L    # 10000.0

    goto/16 :goto_1

    .line 123
    :cond_2
    :try_start_1
    new-instance v39, Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    .line 124
    .local v39, "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    move-object/from16 v0, v90

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/dao/FillupSeries;->add(Lcom/evancharlton/mileage/dao/Fillup;)Z

    .line 126
    invoke-virtual/range {v39 .. v39}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 127
    invoke-virtual/range {v39 .. v39}, Lcom/evancharlton/mileage/dao/Fillup;->getDistance()D

    move-result-wide v34

    .line 128
    .local v34, "distance":D
    cmpl-double v5, v34, v60

    if-lez v5, :cond_4

    .line 129
    move-wide/from16 v60, v34

    .line 130
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MAX_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v60

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 135
    :goto_2
    cmpg-double v5, v34, v76

    if-gez v5, :cond_5

    .line 136
    move-wide/from16 v76, v34

    .line 137
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MIN_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v76

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 142
    :goto_3
    move-object/from16 v0, v97

    move-object/from16 v1, v90

    invoke-static {v0, v1}, Lcom/evancharlton/mileage/math/Calculator;->fillupEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v37

    .line 143
    .local v37, "economy":D
    const-wide/16 v5, 0x0

    cmpl-double v5, v37, v5

    if-lez v5, :cond_3

    .line 144
    move-object/from16 v0, v97

    move-wide/from16 v1, v37

    move-wide/from16 v3, v62

    invoke-static {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/math/Calculator;->isBetterEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 145
    move-wide/from16 v62, v37

    .line 146
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MAX_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v62

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 151
    :goto_4
    move-object/from16 v0, v97

    move-wide/from16 v1, v37

    move-wide/from16 v3, v78

    invoke-static {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/math/Calculator;->isBetterEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)Z

    move-result v5

    if-nez v5, :cond_7

    .line 152
    move-wide/from16 v78, v37

    .line 153
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MIN_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v78

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 159
    :cond_3
    :goto_5
    invoke-virtual/range {v39 .. v39}, Lcom/evancharlton/mileage/dao/Fillup;->getCostPerDistance()D

    move-result-wide v31

    .line 160
    .local v31, "costPerDistance":D
    cmpl-double v5, v31, v58

    if-lez v5, :cond_8

    .line 161
    move-wide/from16 v58, v31

    .line 162
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MAX_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 167
    :goto_6
    cmpg-double v5, v31, v74

    if-gez v5, :cond_9

    .line 168
    move-wide/from16 v74, v31

    .line 169
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MIN_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v74

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 174
    :goto_7
    invoke-virtual/range {v39 .. v39}, Lcom/evancharlton/mileage/dao/Fillup;->getTimestamp()J

    move-result-wide v91

    .line 175
    .local v91, "timestamp":J
    cmp-long v5, v91, v44

    if-ltz v5, :cond_a

    .line 176
    invoke-virtual/range {v39 .. v39}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v5

    add-double v46, v46, v5

    .line 177
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->LAST_MONTH_COST:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v46

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 182
    :goto_8
    cmp-long v5, v91, v48

    if-ltz v5, :cond_b

    .line 183
    invoke-virtual/range {v39 .. v39}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v5

    add-double v50, v50, v5

    .line 184
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->LAST_YEAR_COST:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v50

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 193
    .end local v31    # "costPerDistance":D
    .end local v34    # "distance":D
    .end local v37    # "economy":D
    .end local v91    # "timestamp":J
    :goto_9
    invoke-virtual/range {v39 .. v39}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    move-result-wide v98

    .line 194
    .local v98, "volume":D
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpl-double v5, v40, v5

    if-nez v5, :cond_d

    .line 195
    move-wide/from16 v40, v98

    .line 200
    :goto_a
    cmpl-double v5, v98, v70

    if-lez v5, :cond_e

    .line 201
    move-wide/from16 v70, v98

    .line 202
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MAX_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v70

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 207
    :goto_b
    cmpg-double v5, v98, v86

    if-gez v5, :cond_f

    .line 208
    move-wide/from16 v86, v98

    .line 209
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MIN_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v86

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 214
    :goto_c
    add-double v95, v95, v98

    .line 215
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->TOTAL_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v95

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 217
    invoke-virtual/range {v39 .. v39}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v27

    .line 218
    .local v27, "cost":D
    cmpl-double v5, v27, v56

    if-lez v5, :cond_10

    .line 219
    move-wide/from16 v56, v27

    .line 220
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MAX_COST:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 225
    :goto_d
    cmpg-double v5, v27, v72

    if-gez v5, :cond_11

    .line 226
    move-wide/from16 v72, v27

    .line 227
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MIN_COST:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v72

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 232
    :goto_e
    add-double v93, v93, v27

    .line 233
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->TOTAL_COST:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v93

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 235
    invoke-virtual/range {v39 .. v39}, Lcom/evancharlton/mileage/dao/Fillup;->getUnitPrice()D

    move-result-wide v88

    .line 236
    .local v88, "price":D
    cmpl-double v5, v88, v68

    if-lez v5, :cond_12

    .line 237
    move-wide/from16 v68, v88

    .line 238
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MAX_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v68

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 243
    :goto_f
    cmpg-double v5, v88, v84

    if-gez v5, :cond_13

    .line 244
    move-wide/from16 v84, v88

    .line 245
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->MIN_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v84

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 250
    :goto_10
    invoke-virtual/range {v39 .. v39}, Lcom/evancharlton/mileage/dao/Fillup;->getLatitude()D

    move-result-wide v52

    .line 251
    .local v52, "latitude":D
    cmpl-double v5, v52, v64

    if-lez v5, :cond_14

    const-wide/16 v5, 0x0

    cmpl-double v5, v52, v5

    if-eqz v5, :cond_14

    .line 252
    move-wide/from16 v64, v52

    .line 253
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->NORTH:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v64

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 258
    :goto_11
    cmpg-double v5, v52, v80

    if-gez v5, :cond_15

    const-wide/16 v5, 0x0

    cmpl-double v5, v52, v5

    if-eqz v5, :cond_15

    .line 259
    move-wide/from16 v80, v52

    .line 260
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->SOUTH:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v80

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 265
    :goto_12
    invoke-virtual/range {v39 .. v39}, Lcom/evancharlton/mileage/dao/Fillup;->getLongitude()D

    move-result-wide v54

    .line 266
    .local v54, "longitude":D
    cmpl-double v5, v54, v66

    if-lez v5, :cond_16

    const-wide/16 v5, 0x0

    cmpl-double v5, v54, v5

    if-eqz v5, :cond_16

    .line 267
    move-wide/from16 v66, v54

    .line 268
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->EAST:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v66

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 273
    :goto_13
    cmpg-double v5, v54, v82

    if-gez v5, :cond_17

    const-wide/16 v5, 0x0

    cmpl-double v5, v54, v5

    if-eqz v5, :cond_17

    .line 274
    move-wide/from16 v82, v54

    .line 275
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->WEST:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v82

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 280
    :goto_14
    invoke-virtual/range {v90 .. v90}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v5

    int-to-double v5, v5

    div-double v23, v95, v5

    .line 281
    .local v23, "avgFuel":D
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->AVG_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 283
    move-object/from16 v0, v97

    move-object/from16 v1, v90

    invoke-static {v0, v1}, Lcom/evancharlton/mileage/math/Calculator;->averageEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v21

    .line 284
    .local v21, "avgEconomy":D
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->AVG_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 286
    invoke-static/range {v90 .. v90}, Lcom/evancharlton/mileage/math/Calculator;->averageDistanceBetweenFillups(Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v19

    .line 287
    .local v19, "avgDistance":D
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->AVG_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 289
    invoke-static/range {v90 .. v90}, Lcom/evancharlton/mileage/math/Calculator;->averageFillupCost(Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v15

    .line 290
    .local v15, "avgCost":D
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->AVG_COST:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 292
    invoke-static/range {v90 .. v90}, Lcom/evancharlton/mileage/math/Calculator;->averageCostPerDistance(Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v17

    .line 293
    .local v17, "avgCostPerDistance":D
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->AVG_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 295
    invoke-static/range {v90 .. v90}, Lcom/evancharlton/mileage/math/Calculator;->averagePrice(Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v25

    .line 296
    .local v25, "avgPrice":D
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->AVG_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v5, v1, v2}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 298
    invoke-static/range {v90 .. v90}, Lcom/evancharlton/mileage/math/Calculator;->averageFuelPerDay(Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v42

    .line 299
    .local v42, "fuelPerDay":D
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->FUEL_PER_YEAR:Lcom/evancharlton/mileage/provider/Statistic;

    const-wide v6, 0x4076d00000000000L    # 365.0

    mul-double v6, v6, v42

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 301
    invoke-static/range {v90 .. v90}, Lcom/evancharlton/mileage/math/Calculator;->averageCostPerDay(Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v29

    .line 302
    .local v29, "costPerDay":D
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->AVG_MONTHLY_COST:Lcom/evancharlton/mileage/provider/Statistic;

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    mul-double v6, v6, v29

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V

    .line 303
    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->AVG_YEARLY_COST:Lcom/evancharlton/mileage/provider/Statistic;

    const-wide v6, 0x4076d00000000000L    # 365.0

    mul-double v6, v6, v29

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->update(Lcom/evancharlton/mileage/provider/Statistic;D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/dao/Fillup;->saveIfChanged(Landroid/content/Context;)Z
    :try_end_2
    .catch Lcom/evancharlton/mileage/exceptions/InvalidFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 307
    :catch_0
    move-exception v36

    .line 308
    .local v36, "e":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    :try_start_3
    const-string v5, "VehicleStatisticsTask"

    const-string v6, "Couldn\'t save in-memory changes."

    move-object/from16 v0, v36

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 327
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "args":[Ljava/lang/String;
    .end local v11    # "MAX":D
    .end local v13    # "MIN":D
    .end local v15    # "avgCost":D
    .end local v17    # "avgCostPerDistance":D
    .end local v19    # "avgDistance":D
    .end local v21    # "avgEconomy":D
    .end local v23    # "avgFuel":D
    .end local v25    # "avgPrice":D
    .end local v27    # "cost":D
    .end local v29    # "costPerDay":D
    .end local v33    # "cursor":Landroid/database/Cursor;
    .end local v36    # "e":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    .end local v39    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    .end local v40    # "firstVolume":D
    .end local v42    # "fuelPerDay":D
    .end local v44    # "lastMonth":J
    .end local v46    # "lastMonthCost":D
    .end local v48    # "lastYear":J
    .end local v50    # "lastYearCost":D
    .end local v52    # "latitude":D
    .end local v54    # "longitude":D
    .end local v56    # "maxCost":D
    .end local v58    # "maxCostPerDistance":D
    .end local v60    # "maxDistance":D
    .end local v62    # "maxEconomy":D
    .end local v64    # "maxLatitude":D
    .end local v66    # "maxLongitude":D
    .end local v68    # "maxPrice":D
    .end local v70    # "maxVolume":D
    .end local v72    # "minCost":D
    .end local v74    # "minCostPerDistance":D
    .end local v76    # "minDistance":D
    .end local v78    # "minEconomy":D
    .end local v80    # "minLatitude":D
    .end local v82    # "minLongitude":D
    .end local v84    # "minPrice":D
    .end local v86    # "minVolume":D
    .end local v88    # "price":D
    .end local v90    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .end local v93    # "totalCost":D
    .end local v95    # "totalVolume":D
    .end local v97    # "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    .end local v98    # "volume":D
    :catchall_0
    move-exception v5

    monitor-exit v100
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 132
    .restart local v8    # "selection":Ljava/lang/String;
    .restart local v9    # "args":[Ljava/lang/String;
    .restart local v11    # "MAX":D
    .restart local v13    # "MIN":D
    .restart local v33    # "cursor":Landroid/database/Cursor;
    .restart local v34    # "distance":D
    .restart local v39    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    .restart local v40    # "firstVolume":D
    .restart local v44    # "lastMonth":J
    .restart local v46    # "lastMonthCost":D
    .restart local v48    # "lastYear":J
    .restart local v50    # "lastYearCost":D
    .restart local v56    # "maxCost":D
    .restart local v58    # "maxCostPerDistance":D
    .restart local v60    # "maxDistance":D
    .restart local v62    # "maxEconomy":D
    .restart local v64    # "maxLatitude":D
    .restart local v66    # "maxLongitude":D
    .restart local v68    # "maxPrice":D
    .restart local v70    # "maxVolume":D
    .restart local v72    # "minCost":D
    .restart local v74    # "minCostPerDistance":D
    .restart local v76    # "minDistance":D
    .restart local v78    # "minEconomy":D
    .restart local v80    # "minLatitude":D
    .restart local v82    # "minLongitude":D
    .restart local v84    # "minPrice":D
    .restart local v86    # "minVolume":D
    .restart local v90    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    .restart local v93    # "totalCost":D
    .restart local v95    # "totalVolume":D
    .restart local v97    # "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    :cond_4
    const/4 v5, 0x0

    :try_start_4
    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 139
    :cond_5
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 148
    .restart local v37    # "economy":D
    :cond_6
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 155
    :cond_7
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 164
    .restart local v31    # "costPerDistance":D
    :cond_8
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 171
    :cond_9
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 179
    .restart local v91    # "timestamp":J
    :cond_a
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 186
    :cond_b
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 190
    .end local v31    # "costPerDistance":D
    .end local v34    # "distance":D
    .end local v37    # "economy":D
    .end local v91    # "timestamp":J
    :cond_c
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 197
    .restart local v98    # "volume":D
    :cond_d
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 204
    :cond_e
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 211
    :cond_f
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 222
    .restart local v27    # "cost":D
    :cond_10
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 229
    :cond_11
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 240
    .restart local v88    # "price":D
    :cond_12
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 247
    :cond_13
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 255
    .restart local v52    # "latitude":D
    :cond_14
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 262
    :cond_15
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 270
    .restart local v54    # "longitude":D
    :cond_16
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 277
    :cond_17
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_14

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, [Landroid/database/Cursor;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->doInBackground([Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "done"    # Ljava/lang/Integer;

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getAdapter()Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getCacheCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->setAdapter(Landroid/database/Cursor;)V

    .line 360
    :goto_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->stopCalculations()V

    .line 362
    const-string v0, "VehicleStatisticsTask"

    const-string v1, "Done recalculating!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getAdapter()Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->flush()V

    .line 365
    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getAdapter()Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "VehicleStatisticsTask"

    const-string v1, "Calculation starting..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->startCalculations()V

    .line 40
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "updates"    # [Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 339
    iget v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mTotal:I

    if-lez v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 341
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mTotal:I

    sget-object v2, Lcom/evancharlton/mileage/provider/Statistics;->STATISTICS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 342
    iput v3, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mTotal:I

    .line 344
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_1

    .line 345
    iget v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mProgress:I

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mProgress:I

    .line 349
    :goto_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 350
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getAdapter()Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->notifyDataSetChanged()V

    .line 351
    return-void

    .line 347
    :cond_1
    iget v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->mProgress:I

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

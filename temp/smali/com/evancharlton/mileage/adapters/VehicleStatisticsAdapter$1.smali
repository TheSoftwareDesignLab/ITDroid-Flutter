.class Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;
.super Ljava/lang/Thread;
.source "VehicleStatisticsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 78
    const-string v20, "VehicleStatisticsAdapter"

    const-string v21, "Erasing the cache ..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v19, "item = ?"

    .line 81
    .local v19, "where":Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v12, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$000(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v12, v20

    .line 84
    .local v12, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$100(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    const-string v20, "VehicleStatisticsAdapter"

    const-string v21, "Building new values ..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v20, Lcom/evancharlton/mileage/provider/Statistics;->STATISTICS:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v16, v0

    .line 89
    .local v16, "values":[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$200(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 90
    .local v7, "length":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$000(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v17

    .line 91
    .local v17, "vehicleId":J
    const/4 v8, 0x0

    .line 92
    .local v8, "num":I
    const/4 v6, 0x0

    .local v6, "i":I
    move v9, v8

    .end local v8    # "num":I
    .local v9, "num":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$200(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;

    .line 94
    .local v5, "holder":Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;
    iget v0, v5, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->type:I

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 95
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v15, "v":Landroid/content/ContentValues;
    const-string v20, "item"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string v20, "is_valid"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 98
    const-string v21, "value"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$300(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Ljava/util/HashMap;

    move-result-object v20

    iget-object v0, v5, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->key:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v20, "key"

    iget-object v0, v5, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->key:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "num":I
    .restart local v8    # "num":I
    aput-object v15, v16, v9

    .line 92
    .end local v15    # "v":Landroid/content/ContentValues;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v9, v8

    .end local v8    # "num":I
    .restart local v9    # "num":I
    goto :goto_0

    .line 103
    .end local v5    # "holder":Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;
    :cond_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v9, v0, :cond_1

    .line 104
    const-string v20, "VehicleStatisticsAdapter"

    const-string v21, "Not writing to the database because we don\'t have all the stats"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_2
    return-void

    .line 106
    :cond_1
    const-string v20, "VehicleStatisticsAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Writing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " records to the database ..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 108
    .local v13, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$100(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v3, v20, v13

    .line 110
    .local v3, "diff":J
    long-to-double v0, v3

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v10, v20, v22

    .line 111
    .local v10, "seconds":D
    const-string v20, "VehicleStatisticsAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Caching of "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " records complete! ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " seconds)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3    # "diff":J
    .end local v10    # "seconds":D
    .end local v13    # "start":J
    .restart local v5    # "holder":Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;
    :cond_2
    move v8, v9

    .end local v9    # "num":I
    .restart local v8    # "num":I
    goto/16 :goto_1
.end method

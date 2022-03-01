.class public Lcom/evancharlton/mileage/provider/DatabaseUpgrader;
.super Ljava/lang/Object;
.source "DatabaseUpgrader.java"


# static fields
.field private static final BUILDER:Ljava/lang/StringBuilder;

.field private static final TAG:Ljava/lang/String; = "DatabaseUpgrader"

.field private static final V1_DATABASE:I = 0x3

.field private static final V2_DATABASE:I = 0x4

.field private static final V3_DATABASE:I = 0x5

.field private static sDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static backupExistingTables()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 113
    const/4 v8, 0x3

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, "fillups"

    aput-object v8, v5, v7

    const-string v8, "vehicles"

    aput-object v8, v5, v6

    const/4 v8, 0x2

    const-string v9, "maintenance_intervals"

    aput-object v9, v5, v8

    .line 118
    .local v5, "tables":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 119
    .local v4, "table":Ljava/lang/String;
    sget-object v8, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v9, "ALTER TABLE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RENAME TO OLD_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "table":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v6, "DatabaseUpgrader"

    const-string v8, "Unable to backup existing tables!"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 127
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    return v6
.end method

.method private static cleanUpOldTables()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method private static createNewTables()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 131
    const/16 v13, 0x8

    new-array v9, v13, [Lcom/evancharlton/mileage/provider/tables/ContentTable;

    new-instance v13, Lcom/evancharlton/mileage/provider/tables/FillupsTable;

    invoke-direct {v13}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;-><init>()V

    aput-object v13, v9, v12

    new-instance v13, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;

    invoke-direct {v13}, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;-><init>()V

    aput-object v13, v9, v11

    const/4 v13, 0x2

    new-instance v14, Lcom/evancharlton/mileage/provider/tables/FieldsTable;

    invoke-direct {v14}, Lcom/evancharlton/mileage/provider/tables/FieldsTable;-><init>()V

    aput-object v14, v9, v13

    const/4 v13, 0x3

    new-instance v14, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;

    invoke-direct {v14}, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;-><init>()V

    aput-object v14, v9, v13

    const/4 v13, 0x4

    new-instance v14, Lcom/evancharlton/mileage/provider/tables/VehicleTypesTable;

    invoke-direct {v14}, Lcom/evancharlton/mileage/provider/tables/VehicleTypesTable;-><init>()V

    aput-object v14, v9, v13

    const/4 v13, 0x5

    new-instance v14, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;

    invoke-direct {v14}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;-><init>()V

    aput-object v14, v9, v13

    const/4 v13, 0x6

    new-instance v14, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;

    invoke-direct {v14}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;-><init>()V

    aput-object v14, v9, v13

    const/4 v13, 0x7

    new-instance v14, Lcom/evancharlton/mileage/provider/tables/CacheTable;

    invoke-direct {v14}, Lcom/evancharlton/mileage/provider/tables/CacheTable;-><init>()V

    aput-object v14, v9, v13

    .line 139
    .local v9, "tables":[Lcom/evancharlton/mileage/provider/tables/ContentTable;
    move-object v0, v9

    .local v0, "arr$":[Lcom/evancharlton/mileage/provider/tables/ContentTable;
    :try_start_0
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Lcom/evancharlton/mileage/provider/tables/ContentTable;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v8, v0, v4

    .line 140
    .local v8, "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    invoke-virtual {v8}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->create()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 141
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->init(Z)[Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "upgradeSql":[Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 143
    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v1, v3

    .line 144
    .local v7, "sql":Ljava/lang/String;
    invoke-static {v7}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 139
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "sql":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 149
    .end local v4    # "i$":I
    .end local v8    # "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    .end local v10    # "upgradeSql":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v11, "DatabaseUpgrader"

    const-string v13, "Unable to create new table!"

    invoke-static {v11, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    move v11, v12

    .line 154
    :cond_1
    return v11

    .line 151
    :catch_1
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v11, "DatabaseUpgrader"

    const-string v13, "Unable to create new table!"

    invoke-static {v11, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static final exec(Ljava/lang/String;)V
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p0}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->log(Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private static final flush()V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 101
    return-void
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string v0, "DatabaseUpgrader"

    invoke-static {v0, p0}, Lcom/evancharlton/mileage/util/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method private static migrateOldData()Z
    .locals 3

    .prologue
    .line 160
    :try_start_0
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vehicles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "make"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "model"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "year"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "default_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "vehicle_type_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, ") SELECT make, model, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "CASE WHEN title IS NULL OR title=\"\" THEN (year||\" \"||make||\" \"||model) ELSE title END AS d_title, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "year, def, \'1\' FROM OLD_vehicles;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V

    .line 175
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fillups"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "economy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "odometer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "is_partial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "restart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "total_cost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "price"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "vehicle_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "volume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, ") SELECT date, \'0\', latitude, longitude, mileage, is_partial, restart, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "(cost * amount), cost, vehicle_id, amount FROM OLD_fillups;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V

    .line 192
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fillups_fields"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "fillup_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "template_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, ") SELECT _id, \'1\', comment FROM OLD_fillups;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V

    .line 200
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "UPDATE fillups SET vehicle_id = (SELECT vehicles._id FROM vehicles, OLD_vehicles WHERE vehicles.title = OLD_vehicles.title AND OLD_vehicles._id = vehicle_id)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    const/4 v1, 0x1

    .line 206
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return v1

    .line 204
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_0
    move-exception v0

    .line 205
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "DatabaseUpgrader"

    const-string v2, "Unable to migrate data!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 39
    sput-object p0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 88
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 89
    invoke-static {p0}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    :goto_0
    return-void

    .line 44
    :pswitch_0
    const-string v1, "ALTER TABLE fillups ADD COLUMN is_partial INTEGER;"

    invoke-static {v1}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 47
    const-string v1, "ALTER TABLE fillups ADD COLUMN restart INTEGER;"

    invoke-static {v1}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 50
    const-string v1, "ALTER TABLE vehicles ADD COLUMN distance INTEGER DEFAULT -1;"

    invoke-static {v1}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 53
    const-string v1, "ALTER TABLE vehicles ADD COLUMN volume INTEGER DEFAULT -1;"

    invoke-static {v1}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 56
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE maintenance_intervals ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "creation_date INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "creation_odometer DOUBLE,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "description TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "interval_distance DOUBLE,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "interval_duration INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "vehicle_id INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "is_repeating INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V

    .line 69
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE version ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, "version INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    sget-object v1, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V

    .line 75
    :pswitch_1
    const-string v1, "ALTER TABLE fillups ADD COLUMN economy DOUBLE;"

    invoke-static {v1}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 79
    :pswitch_2
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->backupExistingTables()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->createNewTables()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->migrateOldData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->cleanUpOldTables()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "DatabaseUpgrader"

    const-string v2, "Completed migration!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_1
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "DatabaseUpgrader"

    const-string v2, "Couldn\'t upgrade database!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 83
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    :try_start_1
    const-string v1, "DatabaseUpgrader"

    const-string v2, "Unable to complete migration!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 41
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

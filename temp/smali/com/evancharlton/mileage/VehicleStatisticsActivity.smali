.class public Lcom/evancharlton/mileage/VehicleStatisticsActivity;
.super Landroid/app/Activity;
.source "VehicleStatisticsActivity.java"


# static fields
.field private static final CONSUMPTIONS:[Lcom/evancharlton/mileage/provider/Statistic;

.field private static final COSTS:[Lcom/evancharlton/mileage/provider/Statistic;

.field private static final COSTS_PER_DISTANCE:[Lcom/evancharlton/mileage/provider/Statistic;

.field private static final DISTANCES:[Lcom/evancharlton/mileage/provider/Statistic;

.field private static final ECONOMIES:[Lcom/evancharlton/mileage/provider/Statistic;

.field private static final GROUPS:[Lcom/evancharlton/mileage/provider/StatisticsGroup;

.field private static final LOCATIONS:[Lcom/evancharlton/mileage/provider/Statistic;

.field private static final PRICES:[Lcom/evancharlton/mileage/provider/Statistic;

.field private static final TAG:Ljava/lang/String; = "VehicleStatisticsActivity"


# instance fields
.field private mAdapter:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

.field private mCalculationTask:Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

.field private mCancel:Landroid/widget/ImageView;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private final mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

.field private mVehicleSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    new-array v0, v7, [Lcom/evancharlton/mileage/provider/Statistic;

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->AVG_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->MIN_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->MAX_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v6

    sput-object v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->ECONOMIES:[Lcom/evancharlton/mileage/provider/Statistic;

    .line 41
    new-array v0, v7, [Lcom/evancharlton/mileage/provider/Statistic;

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->AVG_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->MIN_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->MAX_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v6

    sput-object v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->DISTANCES:[Lcom/evancharlton/mileage/provider/Statistic;

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/evancharlton/mileage/provider/Statistic;

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->AVG_COST:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->MIN_COST:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->MAX_COST:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v6

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->TOTAL_COST:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v7

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->LAST_MONTH_COST:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/evancharlton/mileage/provider/Statistics;->AVG_MONTHLY_COST:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/evancharlton/mileage/provider/Statistics;->LAST_YEAR_COST:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/evancharlton/mileage/provider/Statistics;->AVG_YEARLY_COST:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v2, v0, v1

    sput-object v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->COSTS:[Lcom/evancharlton/mileage/provider/Statistic;

    .line 51
    new-array v0, v7, [Lcom/evancharlton/mileage/provider/Statistic;

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->AVG_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->MIN_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->MAX_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v6

    sput-object v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->COSTS_PER_DISTANCE:[Lcom/evancharlton/mileage/provider/Statistic;

    .line 56
    new-array v0, v7, [Lcom/evancharlton/mileage/provider/Statistic;

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->AVG_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->MIN_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->MAX_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v6

    sput-object v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->PRICES:[Lcom/evancharlton/mileage/provider/Statistic;

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/evancharlton/mileage/provider/Statistic;

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->MIN_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->MAX_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->AVG_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v6

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->TOTAL_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v7

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->FUEL_PER_YEAR:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v8

    sput-object v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->CONSUMPTIONS:[Lcom/evancharlton/mileage/provider/Statistic;

    .line 65
    new-array v0, v8, [Lcom/evancharlton/mileage/provider/Statistic;

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->NORTH:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->SOUTH:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->EAST:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v6

    sget-object v1, Lcom/evancharlton/mileage/provider/Statistics;->WEST:Lcom/evancharlton/mileage/provider/Statistic;

    aput-object v1, v0, v7

    sput-object v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->LOCATIONS:[Lcom/evancharlton/mileage/provider/Statistic;

    .line 69
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/evancharlton/mileage/provider/StatisticsGroup;

    new-instance v1, Lcom/evancharlton/mileage/provider/StatisticsGroup;

    const v2, 0x7f07007e

    sget-object v3, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->ECONOMIES:[Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v2, v3}, Lcom/evancharlton/mileage/provider/StatisticsGroup;-><init>(I[Lcom/evancharlton/mileage/provider/Statistic;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/evancharlton/mileage/provider/StatisticsGroup;

    const v2, 0x7f070082

    sget-object v3, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->DISTANCES:[Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v2, v3}, Lcom/evancharlton/mileage/provider/StatisticsGroup;-><init>(I[Lcom/evancharlton/mileage/provider/Statistic;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/evancharlton/mileage/provider/StatisticsGroup;

    const v2, 0x7f070086

    sget-object v3, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->COSTS:[Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v2, v3}, Lcom/evancharlton/mileage/provider/StatisticsGroup;-><init>(I[Lcom/evancharlton/mileage/provider/Statistic;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/evancharlton/mileage/provider/StatisticsGroup;

    const v2, 0x7f07008f

    sget-object v3, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->COSTS_PER_DISTANCE:[Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v2, v3}, Lcom/evancharlton/mileage/provider/StatisticsGroup;-><init>(I[Lcom/evancharlton/mileage/provider/Statistic;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/evancharlton/mileage/provider/StatisticsGroup;

    const v2, 0x7f070093

    sget-object v3, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->PRICES:[Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v1, v2, v3}, Lcom/evancharlton/mileage/provider/StatisticsGroup;-><init>(I[Lcom/evancharlton/mileage/provider/Statistic;)V

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Lcom/evancharlton/mileage/provider/StatisticsGroup;

    const v3, 0x7f070097

    sget-object v4, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->CONSUMPTIONS:[Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v2, v3, v4}, Lcom/evancharlton/mileage/provider/StatisticsGroup;-><init>(I[Lcom/evancharlton/mileage/provider/Statistic;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/evancharlton/mileage/provider/StatisticsGroup;

    const v3, 0x7f07009d

    sget-object v4, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->LOCATIONS:[Lcom/evancharlton/mileage/provider/Statistic;

    invoke-direct {v2, v3, v4}, Lcom/evancharlton/mileage/provider/StatisticsGroup;-><init>(I[Lcom/evancharlton/mileage/provider/Statistic;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->GROUPS:[Lcom/evancharlton/mileage/provider/StatisticsGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Lcom/evancharlton/mileage/dao/Vehicle;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/Vehicle;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mCalculationTask:Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    return-void
.end method

.method static synthetic access$000(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->loadVehicle()V

    return-void
.end method

.method static synthetic access$200(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->cancelTask()V

    return-void
.end method

.method static synthetic access$300(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->recalculate()V

    return-void
.end method

.method static synthetic access$400(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mAdapter:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    return-object v0
.end method

.method private calculate()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "VehicleStatisticsActivity"

    const-string v1, "Recalculating statistics"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    invoke-direct {v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mCalculationTask:Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    .line 207
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mCalculationTask:Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->attach(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V

    .line 208
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mCalculationTask:Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 209
    return-void
.end method

.method private cancelTask()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mCalculationTask:Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mCalculationTask:Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mCalculationTask:Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->cancel(Z)Z

    .line 182
    :cond_0
    return-void
.end method

.method private loadVehicle()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mVehicleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v6

    .line 236
    .local v6, "id":J
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 237
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 238
    .local v8, "vehicle":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 239
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v0, v8}, Lcom/evancharlton/mileage/dao/Vehicle;->load(Landroid/database/Cursor;)V

    .line 240
    return-void
.end method

.method private recalculate()V
    .locals 3

    .prologue
    .line 167
    const-string v1, "VehicleStatisticsActivity"

    const-string v2, "Checking recalculation ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getCacheCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 169
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sget-object v2, Lcom/evancharlton/mileage/provider/Statistics;->STATISTICS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->calculate()V

    .line 171
    const-string v1, "VehicleStatisticsActivity"

    const-string v2, "Recalculation started!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->setAdapter(Landroid/database/Cursor;)V

    .line 176
    return-void

    .line 173
    :cond_0
    const-string v1, "VehicleStatisticsActivity"

    const-string v2, "Recalculation not necessary."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdapter()Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mAdapter:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    return-object v0
.end method

.method public getCacheCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 185
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/CacheTable;->PROJECTION:[Ljava/lang/String;

    const-string v3, "item = ? and is_valid = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "1"

    aput-object v5, v4, v0

    const-string v5, "statistics_group asc, statistics_order asc"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v1, 0x7f030020

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 101
    .local v0, "saved":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 102
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    iput-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mCalculationTask:Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mAdapter:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mCalculationTask:Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mCalculationTask:Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    invoke-virtual {v1, p0}, Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;->attach(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V

    .line 109
    :cond_1
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mListView:Landroid/widget/ListView;

    .line 110
    const v1, 0x7f090016

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mVehicleSpinner:Landroid/widget/Spinner;

    .line 111
    const v1, 0x7f090038

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mContainer:Landroid/widget/LinearLayout;

    .line 112
    const v1, 0x7f090012

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 113
    const v1, 0x7f090039

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mCancel:Landroid/widget/ImageView;

    .line 115
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mVehicleSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/evancharlton/mileage/VehicleStatisticsActivity$1;

    invoke-direct {v2, p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity$1;-><init>(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 130
    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->loadVehicle()V

    .line 131
    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->recalculate()V

    .line 133
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;

    invoke-direct {v2, p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;-><init>(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mCancel:Landroid/widget/ImageView;

    new-instance v2, Lcom/evancharlton/mileage/VehicleStatisticsActivity$3;

    invoke-direct {v2, p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity$3;-><init>(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 220
    const/4 v0, 0x1

    const-string v1, "Recalculate"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 228
    :pswitch_0
    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->calculate()V

    .line 229
    const/4 v0, 0x1

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->loadVehicle()V

    .line 163
    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->recalculate()V

    .line 164
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 213
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mCalculationTask:Lcom/evancharlton/mileage/tasks/VehicleStatisticsTask;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mAdapter:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public setAdapter(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mAdapter:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    sget-object v2, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->GROUPS:[Lcom/evancharlton/mileage/provider/StatisticsGroup;

    invoke-direct {v0, p0, v1, v2}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;-><init>(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;[Lcom/evancharlton/mileage/provider/StatisticsGroup;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mAdapter:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mAdapter:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    invoke-virtual {v0, p1}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 200
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mAdapter:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mAdapter:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->notifyDataSetChanged()V

    .line 202
    return-void
.end method

.method public startCalculations()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 253
    return-void
.end method

.method public stopCalculations()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->mContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    return-void
.end method

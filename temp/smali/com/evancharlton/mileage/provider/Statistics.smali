.class public final Lcom/evancharlton/mileage/provider/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/provider/Statistics$LocationStatistic;,
        Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;,
        Lcom/evancharlton/mileage/provider/Statistics$PriceStatistic;,
        Lcom/evancharlton/mileage/provider/Statistics$CostPerDistanceStatistic;,
        Lcom/evancharlton/mileage/provider/Statistics$CostPerUnitStatistic;,
        Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;,
        Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;,
        Lcom/evancharlton/mileage/provider/Statistics$EconomyStatistic;
    }
.end annotation


# static fields
.field public static final AVG_COST:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final AVG_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final AVG_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final AVG_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final AVG_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final AVG_MONTHLY_COST:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final AVG_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final AVG_YEARLY_COST:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final EAST:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final FUEL_PER_YEAR:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final GROUPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/evancharlton/mileage/provider/StatisticsGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAST_MONTH_COST:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final LAST_YEAR_COST:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final MAX_COST:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final MAX_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final MAX_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final MAX_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final MAX_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final MAX_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final MIN_COST:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final MIN_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final MIN_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final MIN_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final MIN_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final MIN_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final NORTH:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final SOUTH:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final STATISTICS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/evancharlton/mileage/provider/Statistic;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOTAL_COST:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final TOTAL_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

.field public static final WEST:Lcom/evancharlton/mileage/provider/Statistic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->STATISTICS:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->GROUPS:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$EconomyStatistic;

    const-string v1, "avg_economy"

    const-class v2, Lcom/evancharlton/mileage/charts/AverageFuelEconomyChart;

    const v3, 0x7f07007f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$EconomyStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    .line 61
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$EconomyStatistic;

    const-string v1, "min_economy"

    const-class v2, Lcom/evancharlton/mileage/charts/WorstFuelEconomyChart;

    const v3, 0x7f070080

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$EconomyStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    .line 64
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$EconomyStatistic;

    const-string v1, "max_economy"

    const-class v2, Lcom/evancharlton/mileage/charts/BestFuelEconomyChart;

    const v3, 0x7f070081

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$EconomyStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    .line 83
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;

    const-string v1, "avg_distance"

    const-class v2, Lcom/evancharlton/mileage/charts/AverageDistanceChart;

    const v3, 0x7f070083

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    .line 86
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;

    const-string v1, "min_distance"

    const-class v2, Lcom/evancharlton/mileage/charts/MinimumDistanceChart;

    const v3, 0x7f070084

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    .line 89
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;

    const-string v1, "max_distance"

    const-class v2, Lcom/evancharlton/mileage/charts/MaximumDistanceChart;

    const v3, 0x7f070085

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    .line 122
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;

    const-string v1, "avg_cost"

    const-class v2, Lcom/evancharlton/mileage/charts/AverageCostChart;

    const v3, 0x7f070087

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_COST:Lcom/evancharlton/mileage/provider/Statistic;

    .line 125
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;

    const-string v1, "min_cost"

    const-class v2, Lcom/evancharlton/mileage/charts/MinimumCostChart;

    const v3, 0x7f070088

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_COST:Lcom/evancharlton/mileage/provider/Statistic;

    .line 128
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;

    const-string v1, "max_cost"

    const-class v2, Lcom/evancharlton/mileage/charts/MaximumCostChart;

    const v3, 0x7f070089

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_COST:Lcom/evancharlton/mileage/provider/Statistic;

    .line 131
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;

    const-string v1, "total_cost"

    const-class v2, Lcom/evancharlton/mileage/charts/TotalCostChart;

    const v3, 0x7f07008a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->TOTAL_COST:Lcom/evancharlton/mileage/provider/Statistic;

    .line 134
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;

    const-string v1, "last_month_cost"

    const-class v2, Lcom/evancharlton/mileage/charts/LastMonthCostChart;

    const v3, 0x7f07008d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->LAST_MONTH_COST:Lcom/evancharlton/mileage/provider/Statistic;

    .line 137
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$CostPerUnitStatistic;

    const-string v1, "monthly_cost"

    const v2, 0x7f07008b

    const v3, 0x7f0700df

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$CostPerUnitStatistic;-><init>(Ljava/lang/String;IILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_MONTHLY_COST:Lcom/evancharlton/mileage/provider/Statistic;

    .line 140
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;

    const-string v1, "last_year_cost"

    const-class v2, Lcom/evancharlton/mileage/charts/LastYearCostChart;

    const v3, 0x7f07008e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->LAST_YEAR_COST:Lcom/evancharlton/mileage/provider/Statistic;

    .line 143
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$CostPerUnitStatistic;

    const-string v1, "yearly_cost"

    const v2, 0x7f07008c

    const v3, 0x7f0700e0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$CostPerUnitStatistic;-><init>(Ljava/lang/String;IILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_YEARLY_COST:Lcom/evancharlton/mileage/provider/Statistic;

    .line 164
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$CostPerDistanceStatistic;

    const-string v1, "avg_cost_per_mi"

    const v2, 0x7f070090

    invoke-direct {v0, v1, v2, v4}, Lcom/evancharlton/mileage/provider/Statistics$CostPerDistanceStatistic;-><init>(Ljava/lang/String;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    .line 167
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$CostPerDistanceStatistic;

    const-string v1, "min_cost_per_mi"

    const v2, 0x7f070091

    invoke-direct {v0, v1, v2, v4}, Lcom/evancharlton/mileage/provider/Statistics$CostPerDistanceStatistic;-><init>(Ljava/lang/String;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    .line 170
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$CostPerDistanceStatistic;

    const-string v1, "max_cost_per_mi"

    const v2, 0x7f070092

    invoke-direct {v0, v1, v2, v4}, Lcom/evancharlton/mileage/provider/Statistics$CostPerDistanceStatistic;-><init>(Ljava/lang/String;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_COST_PER_DISTANCE:Lcom/evancharlton/mileage/provider/Statistic;

    .line 188
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$PriceStatistic;

    const-string v1, "avg_price"

    const-class v2, Lcom/evancharlton/mileage/charts/AveragePriceChart;

    const v3, 0x7f070094

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$PriceStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

    .line 191
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$PriceStatistic;

    const-string v1, "min_price"

    const-class v2, Lcom/evancharlton/mileage/charts/MinimumPriceChart;

    const v3, 0x7f070095

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$PriceStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

    .line 194
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$PriceStatistic;

    const-string v1, "max_price"

    const-class v2, Lcom/evancharlton/mileage/charts/MaximumPriceChart;

    const v3, 0x7f070096

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$PriceStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_PRICE:Lcom/evancharlton/mileage/provider/Statistic;

    .line 212
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;

    const-string v1, "min_fuel"

    const-class v2, Lcom/evancharlton/mileage/charts/MinimumVolumeChart;

    const v3, 0x7f070098

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MIN_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    .line 215
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;

    const-string v1, "max_fuel"

    const-class v2, Lcom/evancharlton/mileage/charts/MaximumVolumeChart;

    const v3, 0x7f070099

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->MAX_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    .line 218
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;

    const-string v1, "avg_fuel"

    const-class v2, Lcom/evancharlton/mileage/charts/AverageVolumeChart;

    const v3, 0x7f07009a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->AVG_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    .line 221
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;

    const-string v1, "total_fuel"

    const-class v2, Lcom/evancharlton/mileage/charts/TotalVolumeChart;

    const v3, 0x7f07009b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->TOTAL_FUEL:Lcom/evancharlton/mileage/provider/Statistic;

    .line 224
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$1;

    const-string v1, "fuel_per_year"

    const v2, 0x7f07009c

    invoke-direct {v0, v1, v4, v2}, Lcom/evancharlton/mileage/provider/Statistics$1;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->FUEL_PER_YEAR:Lcom/evancharlton/mileage/provider/Statistic;

    .line 245
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$LocationStatistic;

    const-string v1, "north"

    const-class v2, Lcom/evancharlton/mileage/charts/NorthChart;

    const v3, 0x7f07009e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$LocationStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->NORTH:Lcom/evancharlton/mileage/provider/Statistic;

    .line 248
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$LocationStatistic;

    const-string v1, "south"

    const-class v2, Lcom/evancharlton/mileage/charts/SouthChart;

    const v3, 0x7f07009f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$LocationStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->SOUTH:Lcom/evancharlton/mileage/provider/Statistic;

    .line 251
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$LocationStatistic;

    const-string v1, "east"

    const-class v2, Lcom/evancharlton/mileage/charts/EastChart;

    const v3, 0x7f0700a0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$LocationStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->EAST:Lcom/evancharlton/mileage/provider/Statistic;

    .line 254
    new-instance v0, Lcom/evancharlton/mileage/provider/Statistics$LocationStatistic;

    const-string v1, "west"

    const-class v2, Lcom/evancharlton/mileage/charts/WestChart;

    const v3, 0x7f0700a1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evancharlton/mileage/provider/Statistics$LocationStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    sput-object v0, Lcom/evancharlton/mileage/provider/Statistics;->WEST:Lcom/evancharlton/mileage/provider/Statistic;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    return-void
.end method

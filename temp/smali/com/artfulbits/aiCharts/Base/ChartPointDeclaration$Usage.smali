.class public final enum Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Usage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CloseValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

.field public static final enum HighValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

.field public static final enum LowValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

.field public static final enum OpenValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

.field public static final enum SizeValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

.field public static final enum YValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const-string v1, "YValue"

    invoke-direct {v0, v1, v3}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->YValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const-string v1, "SizeValue"

    invoke-direct {v0, v1, v4}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->SizeValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const-string v1, "LowValue"

    invoke-direct {v0, v1, v5}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->LowValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const-string v1, "HighValue"

    invoke-direct {v0, v1, v6}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->HighValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const-string v1, "OpenValue"

    invoke-direct {v0, v1, v7}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->OpenValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const-string v1, "CloseValue"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->CloseValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->YValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->SizeValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->LowValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->HighValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->OpenValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->CloseValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->a:[Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    return-object v0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->a:[Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    return-object v0
.end method

.class public Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "SpinnerCursorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10
    const v2, 0x1090008

    new-array v4, v0, [Ljava/lang/String;

    aput-object p3, v4, v1

    new-array v5, v0, [I

    const v0, 0x1020014

    aput v0, v5, v1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 15
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/adapters/SpinnerCursorAdapter;->setDropDownViewResource(I)V

    .line 16
    return-void
.end method

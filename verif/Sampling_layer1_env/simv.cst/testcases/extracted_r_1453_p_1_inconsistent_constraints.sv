class c_1453_1;
    integer i = -241;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1453_1;
    c_1453_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1zz0zxxz00xx01z0z1x1x1xx1zzx1zzxxxxzxzxzxzxzxzxxxxxxxxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

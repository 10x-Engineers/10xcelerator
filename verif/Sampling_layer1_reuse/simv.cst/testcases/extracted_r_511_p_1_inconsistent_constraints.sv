class c_511_1;
    integer i = -84;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_511_1;
    c_511_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110001z1xz10z0zzx1x0z00zxx01z1xzxzxzxzxxxxxxxxzzzxxzxzzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

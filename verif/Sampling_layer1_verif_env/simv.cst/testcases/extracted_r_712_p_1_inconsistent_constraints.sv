class c_712_1;
    integer i = -117;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_712_1;
    c_712_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x1xxzzx1z1zzx1x111x0zxxxz0x1xzxzxxxxzxxzxzzxzzxzxxzxzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

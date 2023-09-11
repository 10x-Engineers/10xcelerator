class c_2949_1;
    integer i = -490;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2949_1;
    c_2949_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10zxzx0zzx0x0zxz1x0101z0zzz010xzxzzxzxzzxzzxxzxxzxxxxzxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

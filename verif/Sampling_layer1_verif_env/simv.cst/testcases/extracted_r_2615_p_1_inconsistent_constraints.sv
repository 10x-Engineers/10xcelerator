class c_2615_1;
    integer i = -434;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2615_1;
    c_2615_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z1xzxz1zzx1zx0x0zx11z0x111zzx1zzxxzxxzzxzzzzxxzzxzxzzzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

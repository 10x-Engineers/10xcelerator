class c_3412_1;
    integer i = -567;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3412_1;
    c_3412_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01z1000zz101x1z010x0x11z00xz0z0zxxzzzzxxzzxxxzzzxxzxzzzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

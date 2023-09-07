class c_2890_1;
    integer i = -480;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2890_1;
    c_2890_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx10zzxzxz0xx101xz0zz1zxz0z01xzzzzzxxzzzzzxzzxzxxxzzzzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
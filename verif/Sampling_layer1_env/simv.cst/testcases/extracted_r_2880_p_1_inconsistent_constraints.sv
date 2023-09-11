class c_2880_1;
    integer i = -478;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2880_1;
    c_2880_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10x1xx101x1z0zxz10x11x011011x1zzzzxxxzxzzxxxzxxxzxxxzxxzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

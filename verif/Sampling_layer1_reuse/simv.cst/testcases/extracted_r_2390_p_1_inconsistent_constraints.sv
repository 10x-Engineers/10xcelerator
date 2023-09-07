class c_2390_1;
    integer i = -397;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2390_1;
    c_2390_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0000zz110101zz10zxx1xzzx1zx1z1x0zxzzxxzxxzxxzzxxxxzxxxxzzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

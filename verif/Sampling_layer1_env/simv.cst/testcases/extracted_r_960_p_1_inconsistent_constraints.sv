class c_960_1;
    integer i = -158;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_960_1;
    c_960_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x0zx0x1001z111xxx1z10zxx01xxzzzzxxzzxzzxxzzzzxxzxxzxxxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

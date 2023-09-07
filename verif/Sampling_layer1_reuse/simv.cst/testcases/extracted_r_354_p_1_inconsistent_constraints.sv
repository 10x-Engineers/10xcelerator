class c_354_1;
    integer i = -57;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_354_1;
    c_354_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z0zzzx1000001z1z001z0z001xxxxxzzxxzzxxxxzzzxxzzzxxzzxxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

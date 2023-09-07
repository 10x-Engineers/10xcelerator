class c_1596_1;
    integer i = -264;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1596_1;
    c_1596_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000xxxz1z0x0000x011x1101zz1xzxxzzzzxxxxzzxxzzxzzzxxzxzzzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

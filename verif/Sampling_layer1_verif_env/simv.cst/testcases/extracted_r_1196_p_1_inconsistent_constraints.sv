class c_1196_1;
    integer i = -198;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1196_1;
    c_1196_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzx0zz0xzzx1001zz111x0111x0zz01xxxxxzzzxxzzxzzzzxxzzxzxzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

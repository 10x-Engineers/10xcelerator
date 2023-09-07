class c_1880_1;
    integer i = -312;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1880_1;
    c_1880_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01101z11110xzx0xx011xz1zx00xzxzzxxzxzxzxxxxxzxxzxxxzzzxxxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

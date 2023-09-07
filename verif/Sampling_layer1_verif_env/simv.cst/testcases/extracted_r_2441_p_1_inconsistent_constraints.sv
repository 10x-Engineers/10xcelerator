class c_2441_1;
    integer i = -405;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2441_1;
    c_2441_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xz000z1zz0xz1z1z100z001xxxzzzzxzzxxzzzxzzzzxzzxzzzxzzzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_2261_1;
    integer i = -375;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2261_1;
    c_2261_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0010zzzz10xx1z01x00xxz1110z0001zxxzzzxzxzxzzzzxxxxxzxxxzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

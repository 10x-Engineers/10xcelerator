class c_114_1;
    integer i = -17;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_114_1;
    c_114_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1101z001x00xzzz1zz001x1xx1xxzzxxxzzzxxxzxxzzxxxzxxzzzzzzzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

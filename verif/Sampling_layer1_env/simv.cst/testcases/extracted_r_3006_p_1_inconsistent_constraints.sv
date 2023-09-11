class c_3006_1;
    integer i = -499;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3006_1;
    c_3006_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1000x110xx000xx10x10z01x1z1xxxzzxzxxzzzzzxxxxzxzzxzzxxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

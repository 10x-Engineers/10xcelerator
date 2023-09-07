class c_3184_1;
    integer i = -529;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3184_1;
    c_3184_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx011x00z1011x0xx000z1z01000xx0xxxzxzzzxxzzxzzxxzzzzxzzzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

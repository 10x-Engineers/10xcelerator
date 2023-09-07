class c_1494_1;
    integer i = -247;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1494_1;
    c_1494_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxx01xzzz0x11z00xxz1x0001x0xx10xzxxzxzxzzzzzzzxxxzzxzxzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

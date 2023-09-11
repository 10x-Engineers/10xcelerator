class c_2369_1;
    integer i = -393;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2369_1;
    c_2369_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0101010x1001x00x0xz1xxxzxxx01zxzzzxxzzxzzxzxxzxxxxxxzxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

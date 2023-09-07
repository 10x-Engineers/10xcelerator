class c_820_1;
    integer i = -135;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_820_1;
    c_820_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzz1x011xz1zzz00xzzzz100xx01zzxxzxzzzzxxzzxzzzxxzxxxzzzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

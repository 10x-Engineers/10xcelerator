class c_2887_1;
    integer i = -480;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2887_1;
    c_2887_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xxx1z0zxxzx1z0z0zzx000011zzzx1zxzzzzzxzzzxxzzxxxzzxxzzzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

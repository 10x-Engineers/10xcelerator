class c_608_1;
    integer i = -100;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_608_1;
    c_608_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zzxzz10xxx11z01xz0000011x0zzzzxxzzxxxxxxxzxxxxzxzxxxxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

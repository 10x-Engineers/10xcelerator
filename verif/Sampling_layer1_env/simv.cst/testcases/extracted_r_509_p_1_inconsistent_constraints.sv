class c_509_1;
    integer i = -83;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_509_1;
    c_509_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx0z1xzzzzz00z1x011x11z1xz01zx1zxxzzzxxxzzzxzzxxzzzxxzzxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

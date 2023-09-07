class c_3016_1;
    integer i = -501;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3016_1;
    c_3016_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1000z00010zz10110zzxx110x0z11xxxxzzzzzzzzzzzzxxxxzzzzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

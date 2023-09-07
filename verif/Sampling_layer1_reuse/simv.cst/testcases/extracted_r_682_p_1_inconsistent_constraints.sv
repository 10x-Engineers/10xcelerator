class c_682_1;
    integer i = -112;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_682_1;
    c_682_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x011010zz11z01xzzx1100x011110zxxzzzzzxzxxxxzzxxzzzzzxzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

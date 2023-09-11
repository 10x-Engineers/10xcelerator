class c_940_1;
    integer i = -155;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_940_1;
    c_940_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z1zz00z001zx10x00x0110x011111zxzxxxxzxxxxxzzzzzxxzxxxxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

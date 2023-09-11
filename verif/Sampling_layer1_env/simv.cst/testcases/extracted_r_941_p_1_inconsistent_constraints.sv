class c_941_1;
    integer i = -155;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_941_1;
    c_941_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110xz1zx1z1x0x0z000z0010zxxxzzxxxzzzzzxxxxzxzxzxzxxxxxzxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

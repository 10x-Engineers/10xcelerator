class c_366_1;
    integer i = -59;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_366_1;
    c_366_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xx00zx0z10z0x1xz0z111xx0z0011xxzzxxxxzzxzzxzzzxzxzxzxzxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
